require 'soap/rpc/router'

module Soybean

  class Engine
    include SOAP
    class_attribute :service, :instance_reader => false, :instance_writer => false
    class_attribute :logger, :instance_reader => true, :instance_writer => false
    self.logger = Soybean.logger

    def self.inherited(subclass)
      Soybean.engines << subclass
    end

    module ClassMethods
      def setup
        @router = ::SOAP::RPC::Router.new(self.class.name)
        yield self
      end

      def router
        @router
      end

      def endpoint=(regex)
        @endpoint = regex
      end

      def endpoint
        @endpoint
      end

      # SOAP interface

      def mapping_registry
        router.mapping_registry
      end

      def mapping_registry=(mapping_registry)
        router.mapping_registry = mapping_registry
      end

      def literal_mapping_registry
        router.literal_mapping_registry
      end

      def literal_mapping_registry=(literal_mapping_registry)
        router.literal_mapping_registry = literal_mapping_registry
      end

      def generate_explicit_type
        router.generate_explicit_type
      end

      def generate_explicit_type=(generate_explicit_type)
        router.generate_explicit_type = generate_explicit_type
      end

      # servant entry interface

      def add_rpc_servant(obj, namespace = self.default_namespace)
        router.add_rpc_servant(obj, namespace)
      end

      alias add_servant add_rpc_servant

      def add_headerhandler(obj)
        router.add_headerhandler(obj)
      end

      alias add_rpc_headerhandler add_headerhandler

      def filterchain
        router.filterchain
      end

      # method entry interface

      def add_rpc_method(obj, name, *param)
        add_rpc_method_with_namespace_as(default_namespace, obj, name, name, *param)
      end

      alias add_method add_rpc_method

      def add_rpc_method_as(obj, name, name_as, *param)
        add_rpc_method_with_namespace_as(default_namespace, obj, name, name_as, *param)
      end

      alias add_method_as add_rpc_method_as

      def add_rpc_method_with_namespace(namespace, obj, name, *param)
        add_rpc_method_with_namespace_as(namespace, obj, name, name, *param)
      end

      alias add_method_with_namespace add_rpc_method_with_namespace

      def add_rpc_method_with_namespace_as(namespace, obj, name, name_as, *param)
        qname = XSD::QName.new(namespace, name_as)
        soapaction = nil
        param_def = SOAPMethod.derive_rpc_param_def(obj, name, *param)
        router.add_rpc_operation(obj, qname, soapaction, name, param_def)
      end

      alias add_method_with_namespace_as add_rpc_method_with_namespace_as

      def add_rpc_operation(receiver, qname, soapaction, name, param_def, opt = {})
        router.add_rpc_operation(receiver, qname, soapaction, name, param_def, opt)
      end

      def add_document_operation(receiver, soapaction, name, param_def, opt = {})
        router.add_document_operation(receiver, soapaction, name, param_def, opt)
      end
    end
    extend ClassMethods

    def initialize(app = nil)
      @app = app
      setup!(self.class.service)
    end

    def setup!(service)
      self.class.setup {}
      service.class::Methods.each do |definitions|
        opt = definitions.last
        if opt[:request_style] == :document
          self.class.router.add_document_operation(service, *definitions)
        else
          self.class.router.add_rpc_operation(service, *definitions)
        end
      end
      self.class.mapping_registry = Mappings::EncodedRegistry
      self.class.literal_mapping_registry = Mappings::LiteralRegistry
    end

    def call(env)
      s, h, b = with_logging(env, logger) do
        handle(env)
      end
      return s, h, b
    rescue => e
      [200, {'Allow' => 'POST',
             'Content-Type' => 'text/plain'}, [e.message,
                                               e.backtrace.join("\n")]]
    end

    def with_logging(env, logger)
      #Started GET "/" for 127.0.0.1 at 2011-09-28 14:21:28 +0400
      # Processing by DashboardController#index as HTML
      # User Load (0.3ms)  SELECT `users`.* FROM `users` WHERE `users`.`id` = 100 LIMIT 1
      # Role Load (0.3ms)  SELECT `roles`.* FROM `roles` INNER JOIN `assignments` ON `roles`.`id` = `assignments`.`role_id` WHERE `assignments`.`user_id` = 100
      #Redirected to http://localhost:3000/municipal_services
      #Completed 302 Found in 89ms

      request = Rack::Request.new(env)
      input_params = request.body.read
      request.body.rewind

      logger.info "Started %s \"%s\" for %s at %s. caller %s" % [request.request_method,
                                                                 URI(env['REQUEST_URI']).path,
                                                                 request.ip,
                                                                 Time.now.strftime("%Y-%m-%d %H:%M:%S"),
                                                                 request.referer] if logger

      logger.info "  Processing by %s" % [self.class.service.class.name] if logger
      logger.debug "  Parameters: " if logger

      logger.debug pretty_xml(input_params, '    ') if logger

      s, h, b = yield

      logger.debug "Response:" % [h.inspect] if logger
      logger.debug "  Headers: %s" % [h.inspect] if logger
      logger.debug "  Body: " if logger

      logger.debug pretty_xml(b.join, '    ') if logger

      return s, h, b

    rescue => e
      logger.error "\tERROR: \n%s" % [e.message] if logger
      raise e
    end

    def handle(env)
      # yeah, all soap calls are over POST
      if env['REQUEST_METHOD'] != 'POST'
        return 405, {
            'Allow' => 'POST',
            'Content-Type' => 'text/plain'}, ["405 - Method Not Allowed"]
      end

      conn_data = ::SOAP::StreamHandler::ConnectionData.new
      setup_request(conn_data, env)
      conn_data = self.class.router.route(conn_data)
      status, headers, body = setup_response(conn_data, env)
      [status, headers, body]
    rescue
      raise # TODO -- do we 500 right here, or let the exception bubble up?
    end

    def setup_request(conn_data, env)
      # TODO: we're reading the whole input here, which kind of stinks if rack is
      # reading from the client on demand. We can't just pass in the rack input
      # object, since REXML needs an IO that responds to :eof? -- we'd need a
      # wrapper IO-like object.
      conn_data.receive_string = env['rack.input'].read
      conn_data.receive_contenttype = env['CONTENT_TYPE']
      conn_data.soapaction = parse_soapaction(env['HTTP_SOAPAction'])
    end

    def setup_response(conn_data, env)
      status = 200
      headers = {}
      body = []
      headers['content-type'] = conn_data.send_contenttype
      # TODO: cookies?
      if conn_data.is_nocontent
        status = 202 # ACCEPTED
      elsif conn_data.is_fault
        # rather than sending the 500 here, let's bubble up the exception so the
        # parent application can do with it what it will. The only downside is
        # soap4r has already converted the exception into a soap response body at
        # this point, which isn't what we want at all.
        # maybe someday i'll re-parse the response or something. but not today.
        raise conn_data.send_string
      else
        body << conn_data.send_string
      end
      return status, headers, body
    end

    def parse_soapaction(soapaction)
      if !soapaction.nil? and !soapaction.empty?
        if /\A"(.+)"\z/ =~ soapaction
          return $1
        end
      end
      nil
    end

    protected
    def pretty_xml(string, ident='  ')
      Nokogiri.XML(string) { |config| config.default_xml.noblanks }.to_xml(ident: 2).each_line.map do |line|
        "#{ident}#{line}"
      end.join
    rescue
      string
    end
  end
end

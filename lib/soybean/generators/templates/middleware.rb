module Middlewares
  class <%= class_name %> < Soybean::Middleware
    setup do
      self.endpoint = %r(^/<%= model_class_name %>)
      service = <%= model_class_name %>.new
      <%= model_interface_name %>::Methods.each do |definitions|
        opt = definitions.last
        if opt[:request_style] == :document
          self.router.add_document_operation(service, *definitions)
        else
          self.router.add_rpc_operation(service, *definitions)
        end
      end
      self.mapping_registry = Mappings::EncodedRegistry
      self.literal_mapping_registry = Mappings::LiteralRegistry
    end

    def call(env)
      begin
        if env['PATH_INFO'].match(self.class.endpoint)
          handle(env)
        else
          # we can act as both a middleware and an app
          @app ?
              @app.call(env) :
              [404, {"Content-Type" => "text/plain"}, ["404 - Not Found"]]
        end
      rescue => e
        puts e.message
        xml = Nokogiri::XML(e.message)

        #xml.search('faultactor, detail, ivars, item').each { |elem| elem.remove }

        [200, {'Allow' => 'POST',
               'Content-Type' => 'text/xml'}, [xml.to_s]]
      end
    end
  end
end
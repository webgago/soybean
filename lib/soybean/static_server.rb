module Soybean
  class StaticServer < Rack::Static
    attr_accessor :cache

    def call(env)
      path = env["PATH_INFO"]

      unless @urls.kind_of? Hash
        can_serve = @urls.any? { |url| path.index(url) == 0 }
      else
        can_serve = @urls.key? path
      end

      if can_serve
        env["PATH_INFO"] = @urls[path] if @urls.kind_of? Hash
        @file_server.call(env)
      else
        @app.call(env)
      end
    end

    def rewrite(env)
      doc = Nokogiri.XML File.read(env["PATH_INFO"])
      address = d.search('definitions/service/port/:first').first
      address['location'] = "#{env['SERVER_NAME']}:#{env['SERVER_PORT']}/#{env['soybean.service.endpoint']}"
      @cache[env["PATH_INFO"]] = doc

    end

  end
end
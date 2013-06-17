require "rack/root-apex/version"

module Rack
  class RootApex
    def initialize(app)
      @app = app
    end

    def call(env)
      request = Rack::Request.new(env)

      if request.host.starts_with?("www.")
        [301, { "Location" => request.url.sub("//www.", "//") }, self]
      else
        @app.call(env)
      end
    end
  end
end

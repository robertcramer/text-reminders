# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

require 'rack/cors'
use Rack::Cors do
  allow do
    origins '*',
    resource '*',
        :headers => :any,
        :expose => ['Auth-Token', 'expiry', 'token-type', 'uid', 'client'],
        :methods => [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

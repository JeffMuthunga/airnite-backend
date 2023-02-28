require_relative "./config/environment"

use Rack::Cors do
    allow do
        origins '*' # allow requests from ALL frontend origins (if you deploy your application, change this to only allow requests from YOUR frontend origin)
        resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
    end
end

use Rack::JSONBodyParser

run ApplicationController
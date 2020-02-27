# frozen-string-literal: true
require 'rack/app'
class App < Rack::App
  use Rack::App::Middlewares::HeaderSetter, 'Content-Type'=>'text/html'
  get '/' do
    'OK'
  end
end
run App

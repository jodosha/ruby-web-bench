# frozen-string-literal: true
require 'sinatra/base'
class App < Sinatra::Base
  get '/' do
    'OK'
  end
end
run App

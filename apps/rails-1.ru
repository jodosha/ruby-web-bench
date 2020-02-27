# frozen-string-literal: true
require 'action_controller/railtie'
class App < Rails::Application
  config.secret_token = '1234567890'*5
  config.secret_key_base = 'foo'
  config.eager_load = true
  config.active_support.deprecation = :stderr
  config.middleware.delete(ActionDispatch::ShowExceptions)
  config.middleware.delete(Rack::Lock)
  config.middleware.use(Rack::ContentLength)
  config.logger = Logger.new('/dev/null')
  config.logger.level = 4
  config.log_level = :error 
end
class ApplicationController < ActionController::Base
end
class RootController < ApplicationController
  def index
    render :html=>'OK'
  end
end
App.initialize!
App.routes.clear!
App.routes.draw do
  get '/' => 'root#index'
end

run Rails.application

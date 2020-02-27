# frozen_string_literal: true
require 'hanami/api'
class API < Hanami::API
  get '/', to: ->(*) { [200, { 'Content-Type' => 'text/html' }, ['OK']] }
end
App = API.new
run App

# frozen-string-literal: true
require 'watts'
class AppClass < Watts::App
  resource('/', Class.new(Watts::Resource) do
    get { 'OK' }
  end)
  def call(env, req_path = nil)
    res = super
    res[1]['Content-Type'] = 'text/html'
    res
  end
end
App = AppClass.new
run App

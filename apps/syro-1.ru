# frozen-string-literal: true
require 'syro'
app = Syro.new do
  get do
    res.write 'OK'
  end
end
App = app
run App

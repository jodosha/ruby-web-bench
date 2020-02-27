# frozen-string-literal: true
require 'roda'
Roda.plugin :direct_call
Roda.route { 'OK' }
App = Roda.app
run App

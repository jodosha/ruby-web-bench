# frozen-string-literal: true
require 'cuba'
Cuba.define do
  on default do
    res.write('OK')
  end
end

App = Cuba
run App

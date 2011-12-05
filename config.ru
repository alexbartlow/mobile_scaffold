require 'rack'

$: << File.expand_path('../lib', __FILE__)
$: << File.expand_path('../', __FILE__)
require 'mobile'
require 'sprockets'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  run environment
end

map '/' do
  run Mobile
end


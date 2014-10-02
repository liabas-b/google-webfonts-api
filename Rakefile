require 'rubygems'
require 'rake'
require 'echoe'
require 'httparty'
require 'json'

Echoe.new('google-webfonts-api', '0.4.0') do |p|
  p.description     = "Generate a unique token with ActiveRecord"
  p.url             = "http://github.com/liabas-b/google-webfonts-api"
  p.author          = "Benoit Liabastre"
  p.email           = "b.liabastre@gmail.com"
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

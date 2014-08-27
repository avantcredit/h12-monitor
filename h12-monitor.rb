#!/usr/bin/env ruby
require 'rubygems'
require 'bundler'
if defined?(Bundler)
  Bundler.require
end
require 'daemons'
require File.expand_path('../lib/h12_monitor', __FILE__)

# You can get your API key from Heroku's My Account page
APP_NAME = ENV['H12_MONITOR_HEROKU_APP_NAME']
API_KEY  = ENV['H12_MONITOR_HEROKU_APP_API_KEY']

if (APP_NAME && API_KEY)
  Daemons.run_proc('h12-monitor.rb') do
    H12Monitor.new(APP_NAME, API_KEY).monitor
  end
else
  puts "YOU DONT HAVE H12 MONITOR VARS SET IN YOUR ENVIRONMENT"
  puts "H12 Monitor will not run."
end

# This is based on the official RSpec tm-bundle

ENV['TM_PROJECT_DIRECTORY'] ||= File.dirname(ENV['TM_FILEPATH'])
rspec_rails_plugin = File.join(ENV['TM_PROJECT_DIRECTORY'],'vendor','plugins','rspec','lib')

if File.exist?(File.join(ENV['TM_PROJECT_DIRECTORY'], 'Gemfile'))
  require "rubygems"
  require "bundler"
  Bundler.setup
elsif File.directory?(rspec_rails_plugin)
  $LOAD_PATH.unshift(rspec_rails_plugin)
elsif ENV['TM_RSPEC_HOME']
  rspec_lib = File.join(ENV['TM_RSPEC_HOME'], 'lib')
  unless File.directory?(rspec_lib)
    raise "TM_RSPEC_HOME points to a bad location: #{ENV['TM_RSPEC_HOME']}"
  end
  $LOAD_PATH.unshift(rspec_lib)
end

begin
  require 'spec/autorun'
rescue LoadError
  require 'rspec/core'
end

def rspec2?
  defined?(RSpec)
end

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/..')
require "cucumber/mate/feature_helper"
require "cucumber/mate/runner"
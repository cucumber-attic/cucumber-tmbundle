require 'rubygems'
require 'rspec/core'

ENV['TM_SUPPORT_PATH'] = '~/Library/Application Support/TextMate/Managed/Bundles/Bundle Support.tmbundle/Support/shared' unless ENV.has_key?('TM_BUNDLE_SUPPORT')

RSpec.configure do |c|
  c.include(Module.new do
    def project_root
      @project_root ||= File.expand_path(File.join(File.dirname(__FILE__), '../fixtures'))
    end
  end)
end
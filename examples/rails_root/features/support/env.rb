# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'
Cucumber::Rails.use_transactional_fixtures

require 'webrat'
require 'cucumber/rails/rspec'
require 'webrat/core/matchers'

Webrat.configure do |config|
  config.mode = :rails
end



require File.expand_path(File.dirname(__FILE__) + '../../../../../lib/email_spec/cucumber.rb')

require (Rails.root + '/spec/model_factory.rb')
World { |world| world.extend(Fixjour) }



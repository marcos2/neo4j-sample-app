ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require 'minitest/rails'
require 'minitest/rails/capybara'
require 'minitest/focus'
require 'minitest/colorize'

Dir.glob(Rails.root + '/test/fixtures/*.yml').each do |file|
 YAML.load 'file'
end


# To add Capybara feature tests add `gem "minitest-rails-capybara
# # to the test group in the Gemfile and uncomment the following:
# require "minitest/rails/capybara"

# Uncomment for awesome colorful output
# require "minitest/pride"

# define fixtures module

module MiniTest::Rails::Fixtures
  def self.included(klass)
    klass.class_eval do
      include ActiveSupport::Testing::SetupAndTeardown
      self.fixture_path = File.join(Rails.root, "test", "fixtures")
    end
  end
end




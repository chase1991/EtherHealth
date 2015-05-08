require 'simplecov'
SimpleCov.start do
	add_filter "/features/support/paths.rb"
	add_filter "/features/step_definitions/ask_new_test_steps.rb"
	add_filter "/features/support/selectors.rb"
	add_filter "/features/step_definitions/filter_test_steps.rb"
	add_filter "/features/step_definitions/ask_question_test_steps.rb"
	add_filter "/features/step_definitions/answer_question_test_steps.rb"
end

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

require File.join(File.dirname(__FILE__), 'nice_bank')
require 'capybara/cucumber'
Capybara.app = Sinatra::Application
Sinatra::Application.set :environment, :test
Capybara.save_and_open_page_path = Dir.pwd+"/features/reports"
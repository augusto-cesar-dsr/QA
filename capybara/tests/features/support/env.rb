# require 'capybara/cucumber'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'webdrivers'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://automacaocombatista.herokuapp.com'
  config.default_max_wait_time = 30
end
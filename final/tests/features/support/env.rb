require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'

World(Helper)

capybara.configurem do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://automacaocombatista.herokuapp.com/'
  config.default_max_wait_time = 10
end
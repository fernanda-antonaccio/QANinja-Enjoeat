require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_max_wait_time = 20
    config.default_driver = :selenium_chrome
    config.app_host = 'http://enjoeat-sp5.herokuapp.com'
end
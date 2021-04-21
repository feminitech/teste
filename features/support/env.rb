
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'


Capybara.configure do |config| 
    config.default_driver = :selenium_chrome
end
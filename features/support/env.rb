require 'watir'
require 'selenium-webdriver'
require 'test-unit'


Before do |scenario|
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end

After do |scenario|
  @browser.quit
end
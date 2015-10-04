require 'minitest/autorun'
require 'test/unit/assertions'
require 'watir-webdriver'

include Test::Unit::Assertions

browser = Watir::Browser.new
@browser = browser

Given(/^I am in login page$/) do
  browser.goto "localhost:3000/login"
end

When(/^I enter the user id as "([^"]*)"$/) do |userid|
  browser.text_field(:id,'username').set(userid)
end

When(/^I enter password as "([^"]*)"$/) do |password|
  browser.text_field(:id, 'password').set(password)
end

When(/^I click on "([^"]*)" button$/) do |submit|
  browser.button(:id, 'login').click
end


Then(/^I should be in main page$/) do
  assert(browser.link(:xpath, '//*[@id="bs-example-navbar-collapse-1"]/ul/li[1]/a').exists?, "Valid authentication")
  #assert(browser.title.include?('WMSUI'), "Test Valid User Id and Password")
end

Then(/^it should throw the error message "([^"]*)"$/) do |error_message|
  assert((browser.div(:id, 'message').span(:class, 'label label-danger ng-binding').text == error_message), "Error Message")
end



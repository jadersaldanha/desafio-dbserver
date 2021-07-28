require "capybara"
require "capybara/rspec"
require "selenium-webdriver"
require 'rspec'

Capybara.configure do |config|
  include Capybara::DSL
  config.default_max_wait_time = 120
  config.app_host = "https://demoqa.com"
  config.default_driver = BROWSER = (ENV['DRIVER'] || 'chrome').to_sym
end

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('start-maximized')
  options.add_argument('disable-infobars')
  options.add_argument('--enable-features=NetworkService,NetworkServiceInProcess')
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end
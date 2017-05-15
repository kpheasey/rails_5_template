# frozen_string_literal: true

require 'capybara/rspec'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome,
                                 desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
                                   'chromeOptions' => {
                                     'args' => ['--window-size=1024,768']
                                   }
                                 ))
end

Capybara.javascript_driver = :selenium

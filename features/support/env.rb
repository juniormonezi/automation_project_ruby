# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require "cpf_cnpj"
require 'faker'
require 'pry'
require 'rspec'
require 'selenium-webdriver'
require 'report_builder'

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/environments/#{ENV['ENV_TYPE']}.yml"))
EL = YAML.load_file('features/support/config/elements/elements.yml')
DATA = YAML.load_file('features/support/config/environments/url.yml')
@browser = ENV['BROWSER']

Capybara.configure do |config|
  case @browser
  when 'chrome'
    @driver = :selenium_chrome
  when 'chrome_headless'
    @driver = :selenium_chrome_headless
  when 'firefox'
    @driver = :selenium
  when 'firefox_headless'
    @drive = :selenium_headless
  end

  config.default_driver = @driver
  config.app_host = CONFIG['hml']
  config.default_max_wait_time = 30
end

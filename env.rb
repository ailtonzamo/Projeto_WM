# frozen_string_literal: true
require "capybara/cucumber"
require "selenium-webdriver"
require 'capybara/rspec'

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60
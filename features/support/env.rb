require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'capybara-screenshot'
require 'capybara-screenshot/cucumber'
require 'i18n'
require 'yaml'
require 'site_prism'
require 'capybara-webkit'
require 'pry'

Dir['./features/pages/*.rb'].each { |file| require file }
CONFIG = YAML.load_file('config/config.yml')

Capybara.save_and_open_page_path = CONFIG['capybara']['screenshot_path']
Capybara::Screenshot.autosave_on_failure = true

Capybara.default_max_wait_time = CONFIG['capybara']['wait_time']

# Setting home URL of test environment
# check config.yml => environment => default or set TEST_ENV environment variable
TEST_ENV = ENV['TEST_ENV'] || CONFIG['environment']['default']
Capybara.app_host = CONFIG['environment'][TEST_ENV]['home']

# Locales stuff
LOCALE = ENV['LOCALE'] || CONFIG['project']['locale']
I18n.enforce_available_locales = false
I18n.default_locale = LOCALE.to_sym
I18n.load_path = Dir[CONFIG['project']['load_path']]

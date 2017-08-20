browser = ENV['BROWSER'] || CONFIG['capybara']['browser']
case browser
when 'capybara-webkit'
  Capybara.default_driver = :webkit
  Capybara::Webkit.configure do |config|
    config.allow_url('google.pl')
    config.allow_url('google.com')
    config.block_unknown_urls
  end
when 'phantomjs'
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new app,
                                      phantomjs_options: CONFIG['capybara']['phantomjs_specific']['options'],
                                      window_size: CONFIG['capybara']['phantomjs_specific']['window_size']
  end
  Capybara.default_driver = :poltergeist
else
    Capybara.default_driver = :selenium
    Capybara.register_driver :selenium do |app|
      browser = (ENV['BROWSER'] || CONFIG['capybara']['browser']).to_sym
      Capybara::Selenium::Driver.new(app, browser: browser)
    end
end

puts 'Running tests with '"#{Capybara.current_driver}"' driver'

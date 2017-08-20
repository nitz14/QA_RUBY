Before do |_scenario|
  @app = App.new
end

After do |scenario|
  # Capybara::Screenshot.screenshot_and_save_page if scenario.failed?
end

# Cucubara
Base project for BDD automation build with Cucumber, Capybara and SitePrism as Page Object Lib.
Feel free to clone, change it on your own.

Maybe in the future it'll be transform it to Gem.

## Firefox
- download latest https://github.com/mozilla/geckodriver/releases 
- then add it to the PATH - follow the instructions: https://developer.mozilla.org/en-US/docs/Mozilla/QA/Marionette/WebDriver
- example ```export PATH=$PATH:/Users/jbi07/geckodriver```

## Installation
- ```bundle install```

## Run examples:
- ```bundle exec cucumber features```
- ```bundle exec cucumber features/test.feature:4```
- ```bundle exec cucumber features --tags @negative```
- ```bundle exec cucumber features BROWSER=firefox```

## Optional Dependencies
- If you run headless in phantomjs run ```sudo apt-get install phantomjs```
- If you run headless in capybara-webkit
  - install QMake. Installation steps depend on OS - more info: https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit```
  - ```sudo apt-get install xvfb```
- ChromeDriver if you want to run in Google Chrome - https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver

## Why?
- I feel most familiar with ruby/cucumber/capybara & site_prism and I think they provide many valuable capabilities with most cleaner and flexible code.
- I want to learn so I'm happy for any feedback

## TODO's
- prepare some test app and add tests for it
- cucumber.yml - profiles with html reports by default

## Very "Special" features
- basic environments ready: development, stage & production ready to run from command line
- basic apps ready: home and admin app with predefined step definitions
- very basic internationalization handling
- multi browser support (not tested on OSX and Windows yet)
- scenario_context to save scenario state for eg. created user credentials from ```When``` steps
-- to add sth to scenario_context ```@app.scenario_context[:key] = value```
-- to get sth from scenario_context ```@app.scenario_context[:key]```
- tags scheme: @positive, @negative, @skip etc. tags

## Tags convention suggestion
- @postive @negative scenarios...
- @skip
- @todo

## Version
0.1

## License
MIT License (MIT)

Given(/^I am using "([^"]*)" language version$/) do |lang|
  lang.downcase!
  I18n.locale = lang.to_sym
  # you can add here your own language_switch method
end

Then(/^I should see "([^"]*)" text$/) do |text|
  expect(page).to have_content(I18n.t text, default: text)
end

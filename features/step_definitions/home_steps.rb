Then(/^I should see "([^"]*)" element$/) do |element|
  case element
  when 'logo'
    expect(@app.home_app.front_page).to have_logo
  when 'search_input'
    expect(@app.home_app.front_page).to have_search_input
  end
end

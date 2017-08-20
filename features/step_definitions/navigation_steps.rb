When(/^I go to "([^"]*)" url$/) do |url|
  visit url
end

When(/^I navigate to "([^"]*)" app "([^"]*)" page$/) do |host, page|
  set_host(host)
  visit page
end

Then(/^I should be redirected to "([^"]*)" app "([^"]*)" page$/) do |host, page|
  if page.include? '*'
    expect(current_url).to have_content get_host_url(host) + page.delete('*')
  else
    expect(current_url).to eq get_host_url(host) + page
  end
end

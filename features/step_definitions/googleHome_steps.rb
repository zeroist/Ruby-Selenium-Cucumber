Given(/^user is on google home page$/) do
  $browser.goto "https://www.google.com"
  puts "ok google came"

  $user = Homepage.new()
end

Then(/^url is google\.com$/) do

  $user.gmail_link.flash
  expect($user.gmail_link.present?).to be true

end

And(/^images ling is flashing$/) do
  $user.images_link.flash
  expect($user.images_link.present?).to be true
end

Given(/^user type for "([^"]*)" into search box$/) do |arg|
  expect($user.searchBox.present?).to be true
  $user.searchBox.send_keys 'ali'

end

When(/^user clicks to search button$/) do
  $user.searchButton.click
end

Then(/^user see the search result$/) do
  for el in $user.searchResultList
    puts el.text
  end
end

Given(/^user type for ali into search box$/) do
  expect($user.searchBox.present?).to be true
  $user.searchBox.send_keys 'ali'
end
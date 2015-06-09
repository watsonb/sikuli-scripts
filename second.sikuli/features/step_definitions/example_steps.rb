Given /^I have launched Google Chrome$/ do
  @screen = Sikuli::Screen.new
  @screen.click "applications.png"
  @screen.wait "internet_menu_option.png", 2
  @screen.click "internet_menu_option.png"
  @screen.wait "chrome.png", 2
  @screen.click "chrome.png"
end

When /^I type "([^"]*)"$/ do |text|
  @screen.click "url.png"
  @screen.type text
  @screen.type Sikuli::KEY_RETURN
end

Then /^I should see "([^"]*)"$/ do |filename|
  #@screen.find filename
  @screen.wait filename, 5
end

Given /^I wait at least (\d+) seconds for "([^"]*)" to appear$/ do |time, filename|
  @screen.wait filename, time.to_i
end

Given /^The login page is visible$/ do
  @screen = Sikuli::Screen.new
  @screen.find "devapp-admin.png"
end

When /^I type "([^"]*)" into the username field$/ do |text|
  @screen.click "fld_username.png"
  @screen.type text
  #@screen.type Sikuli::KEY_RETURN
  @screen.type Sikuli::TAB
end

And /^I type "([^"]*)" into the password field$/ do |text|
  @screen.click "fld_password.png"
  @screen.type text
end

And /^I click the "([^"]*)" button$/ do |filename|
  @screen.click filename
end

#Then /^I should see "([^"]*)"$/ do |filename|
  #@screen.find filename
#  @screen.wait filename, 5
#end


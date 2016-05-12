#Note, need to eliminate ambiguous/dup steps

#Create Poll

Given /^I have logged in$/ do
  @screen = Sikuli::Screen.new
  @screen.find "txt_welcome_jenkins.png"
end

When /^I click "([^"]*)"$/ do |filename|
  @screen.click filename
end

And /^I wait (\d+) seconds for "([^"]*)"$/ do |time, filename|
  @screen.wait filename, time.to_i
end

And /^I type "([^"]*)"$/ do |text|  
  @screen.type text
end

And /^I press Tab$/ do  
  @screen.type Sikuli::TAB
end

And /^I press Enter$/ do  
  @screen.type Sikuli::KEY_RETURN
end

#Example steps

Given /^I have launched Google Chrome$/ do
  @screen = Sikuli::Screen.new
  @screen.click "applications.png"
  @screen.wait "internet_menu_option.png", 2
  @screen.click "internet_menu_option.png"
  @screen.wait "chrome.png", 2
  @screen.click "chrome.png"
end

Then /^I should see "([^"]*)"$/ do |filename|
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
  @screen.type Sikuli::TAB
end

And /^I type "([^"]*)" into the password field$/ do |text|
  @screen.click "fld_password.png"
  @screen.type text
end

And /^I click the "([^"]*)" button$/ do |filename|
  @screen.click filename
end


Given /^I see "([^"]*)"$/ do |filename|  
  @screen.wait filename, 5
end

Given /^I created a poll and I see "([^"]*)"$/ do |filename|
  @screen = Sikuli::Screen.new  
  @screen.wait filename, 20
end

Given /^I voted and see "([^"]*)"$/ do |filename|
  @screen = Sikuli::Screen.new  
  @screen.wait filename, 5
end

Given /^I deleted a poll and I see "([^"]*)"$/ do |filename|
  @screen = Sikuli::Screen.new  
  @screen.wait filename, 5
end

And /^I press Delete$/ do  
  @screen.type Sikuli::DELETE
end

When /^I click and hold "([^"]*)" for (\d+) seconds$/ do |filename, time|
  @screen.click_and_hold time.to_i, filename
end


#Manual Testing stuff

Given /^I have satisfied some preconditions$/ do
  pending "Manually satisfy any test preconditions"
end

When /^I do something only a person can do$/ do
  pending "Do something only a person can do"
end

Then /^I should see something amazing$/ do
  pending "Did you see something amazing?"
end

When /^I do something else only a person can do$/ do
  pending "Do something else only a person can do"
end

Then /^I should see something truly remarkable$/ do
  pending "Did you see something truly remarkable?"
end
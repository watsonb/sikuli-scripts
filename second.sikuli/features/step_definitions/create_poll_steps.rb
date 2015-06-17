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

Then /^I should see "([^"]*)"$/ do |filename|
  @screen.find filename
  @screen.wait filename, 5
end


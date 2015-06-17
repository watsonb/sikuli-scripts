Given /^I have logged in$/ do
  @screen = Sikuli::Screen.new
  @screen.find "txt_welcome_jenkins.png"
end

When /^I click "([^"]*)"$/ do |filename|
  @screen.click filename
end

And /^I click "([^"]*)"$/ do |filename|
  @screen.click filename
end

And /^I wait (\d+) seconds for "([^"]*)"$/ do |time, filename|
  @screen.wait filename, time.to_i
end

And /^I type "([^"]*)"$/ do |text|  
  @screen.type text
end

And /^I press Tab$/ do |text|  
  @screen.type Sikuli::TAB
end

And /^I press Enter$/ do |text|  
  @screen.type Sikuli::KEY_RETURN
end
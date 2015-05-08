Given /^I am currently on root page$/ do
  visit root_path
end

When /^I want to sign up to this web$/ do
  click_on 'Sign Up Now'
end

Then /^I can see signup page$/ do
  fill_in 'Username', :with => "test2"
  fill_in 'Email', :with => 'test2@test.com'
  fill_in 'Password', :with => '123'
  current_path.should == URI.parse(current_url).path
  # assert page.has_content?("Q1")
end


Given /^I am currently on sign up page$/ do
  visit signup_path
end

When /^I fill in my personal information$/ do
  fill_in 'Username', :with => "test2"
  fill_in 'Email', :with => 'test2@test.com'
  fill_in 'Password', :with => '123'
  #find("Create Account").click
end

Then /^I can see that created successfully$/ do
  current_path.should == URI.parse(current_url).path
end
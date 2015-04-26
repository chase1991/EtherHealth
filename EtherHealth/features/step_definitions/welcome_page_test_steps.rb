Given /^I am on the welcome page$/ do 
   visit root_url
end

Given /^I am not logged in$/ do 
   logged_in = false
end

When /^I press "([^\"]*)"$/ do |link|
   click_link link
end

Then /^page should not change$/ do 
   visit root_url
end

Then /should go to login page$/ do 
   visit login_path
end

Then /should go to sign up page$/ do
   visit signup_path
end

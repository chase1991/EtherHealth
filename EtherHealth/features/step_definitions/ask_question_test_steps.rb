Given /^I am currently on ask question page$/ do
  visit questions_path
end

When /^try to add a question$/ do
  click_button "New Question"
end

Then /^I should see NoMethodError$/ do
  assert page.has_content?("NoMethodError")
end


When /^I press "Login"$/ do
  click_button "Login"
end

Then /^should go to login page$/ do
  visit login_path
end
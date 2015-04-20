Given(/^I am on the listing tags page$/) do
  visit tags_path
end

When(/^I press New tag$/) do
  click_button 'New Tag'
end

Then(/^I should see creating page$/) do
  assert page.has_css?('div class="actions"')
end

Given(/^I am currently in the new tag page$/) do
  visit(new_tag_path)
end

When(/^I add a new tag$/) do |arg1|
  fill_in 'Name', :with => "Cardio"
  click_button 'Create Tag'
end

Then(/^should see Tag was successfully created\.$/) do |arg1|
  assert page.has_content?("Tag was successfully created.")
end

When(/^I press edit of any listed Ftype$/) do |arg1|
  click_button 'Back'
end

Then(/^should see Editing Tag$/) do |arg1|
  assert page.has_content?("Listing Tags")
end
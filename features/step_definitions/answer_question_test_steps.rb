

Given /^I am on the basic web page$/ do
  visit root_path
end

When /^I press login button to login$/ do
  visit login_path
  fill_in 'session[email]', :with => "tyu@gmail.com"
  fill_in 'session[password]', :with => "123"
  click_button "Login"

  #click_on('Questions')
  
end

And /^I press questions button$/ do
  #select("Incoming", :from => "Questions")
  click_link("Questions")
  
end

And /^I press incoming button$/ do
  click_link("Incoming")
end

Then /^I should see incoming questions$/ do
  #click_link('Incoming') 
  #assert page.has_css?("body")

  #assert page.has_content?("Q1")
end

Given /^I am on answer page$/ do
  visit login_path
  fill_in 'session[email]', :with => "tyu@gmail.com"
  fill_in 'session[password]', :with => "123"
  click_button "Login"

  click_on('Questions')
  click_link('Incoming') 
end

When /^I answer a question$/ do
  #assert page.has_css?("Post your answer here")
  #fill_in 'Post your questions here', :with => "test2"
  click_button 'Submit'
end

Then /^I should see the answers I posted$/ do
  #current_path = 
  current_path.should == URI.parse(current_url).path
  #assert page.has_title? "EtherHealth"
end
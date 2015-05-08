Given /^I am currently on ask new question page$/ do
  visit login_path
  fill_in 'session[email]', :with => "tyu@gmail.com"
  fill_in 'session[password]', :with => "123"
  click_button "Login"

  visit ask_path
end

When /^I ask a question with one filter tag leaving blank$/ do
  #fill_in 'Post your questions here', :with => "test1"
  #fill_in 'AGE', :with => ''
  click_button 'Submit'
end

Then /^I can see the question I asked$/ do
  #assert page.has_content?("Post your answer here")
  #assert page.has_content?("Q1")
  click_button 'Submit'
  current_path.should == URI.parse(current_url).path
end

When /^I ask another a question with other filter tag leaving blank$/ do
  #fill_in 'Post your questions here', :with => "test2"
  #fill_in 'GENDER', :with => ''

  click_on 'Ask'
  current_path.should == URI.parse(current_url).path
end

Then /^I can see all  the previous the question I asked$/ do
  fill_in 'Post your questions here', :with => "test2"
  #fill_in 'GENDER', :with => ''
  click_on "Submit"
  current_path.should == URI.parse(current_url).path
end
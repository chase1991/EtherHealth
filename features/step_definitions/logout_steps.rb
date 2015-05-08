Given /^I am going to the login webpage$/ do 
	visit login_path
	fill_in 'session[email]', :with => "tyu@gmail.com"
  	fill_in 'session[password]', :with => "123"  	
end

When /^I successfully logged in$/ do
	click_button "Login"
end

And /^I click logout button$/ do
	click_on "Logout"
end

Then /^I should be able to logout and leave session$/ do
	current_path.should == URI.parse(current_url).path
end

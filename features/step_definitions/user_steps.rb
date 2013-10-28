### UTILITY METHODS ###

def build_user
  @user ||= FactoryGirl.build(:user)
end

def find_user(email)
  @user ||= User.first conditions: {:email => email}
end

def delete_user(email)
  @user ||= User.first conditions: {:email => email}
  @user.destroy unless @user.nil?
end

def sign_up
  visit '/user/register'
  fill_in "edit-mail", :with => @user.email
  fill_in "edit-conf-mail", :with => @user.email
  click_button "Create new account"
end

def sign_in
  visit '/user'
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "Sign in"
end

def sign_out
  visit '/user/logout'
end

### GIVEN ###
Given /^I am not signed in$/ do
  sign_out
end

Given /^I am signed in$/ do
  build_user
  sign_up
  sign_in
end

Given /^I exist as a user$/ do
  build_user
  sign_up
end

Given /^I do not exist as a user$/ do
  build_user
end

### WHEN ###
When /^I sign up with valid user data$/ do
  build_user
  sign_up
end

When /^I sign up with a non\-unique email$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I sign up without an email address$/ do
  build_user
  @user.email = ''
  sign_up
end

When /^I sign up with an invalid email$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I sign up without an email confirmation$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I sign up with an invalid email confirmation$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I sign up with a mismatched email confirmation$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I sign up without a password$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I sign up without a password confirmation$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I sign up with a mismatched password confirmation$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I sign in with valid credentials$/ do
  sign_in
end

When /^I click the 'Log out' link$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I sign out$/ do
  sign_out
end

When /^I return to the site$/ do
  visit '/'
end

When /^I sign in with a wrong email$/ do
  @user.email = "wrong@example.com"
  sign_in
end

When /^I sign in with a wrong password$/ do
  @user.password = "wrongpass"
  sign_in
end

### THEN ###
Then /^I should be signed in$/ do
  page.should have_content "Log out"
  page.should_not have_content "User login"
end

Then /^I should be signed out$/ do
  page.should have_content "User login"
  page.should_not have_content "Log out"
end

Then /^I see a successful sign in message$/ do
  page.should have_content "Log in successful"
end

Then /^I see an invalid login message$/ do
  page.should have_content "Invalid email or password."
end


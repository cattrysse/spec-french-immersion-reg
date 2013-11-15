# Setup Capybara so that we can use the DSL for writing the tests
require 'capybara/dsl'
include Capybara::DSL

# We will use the selenium driver
Capybara.current_driver = :selenium

# We will not run our own server; we will connect to a remote server
Capybara.run_server = false

# Set the base URL for all our tests
Capybara.app_host = 'http://camshaft.wrdsb.ca'

#Capybara.default_wait_time = 10

def log_into_site
  visit('/french/user')
  fill_in('edit-name', :with => 'user@wrdsb.on.ca')
  fill_in('edit-pass', :with => 'password')
  click_button('Log in')
end

def set_form_elements
  @form_url = '/french/node/add/french-immersion-reg-record'
  @parent1_surname = 'edit-field-parent1-surname-und-0-value'
  @parent1_given_name = 'edit-field-parent1-given-name-und-0-value'
  @parent1_phone_primary = 'edit-field-parent1-phone-primary-und-0-value'
  @parent1_phone_alternate = 'edit-field-parent1-phone-alternate-und-0-value'
  @parent1_address = 'edit-field-parent1-address-und-0-value'
  @parent1_apartment = 'edit-field-parent1-apartment-und-0-value'
  @parent1_city = 'edit-field-parent1-city-und-0-value'
  @parent1_postal = 'edit-field-parent1-postal-und-0-value'
  @parent2_surname = 'edit-field-parent2-surname-und-0-value'
  @parent2_given_name = 'edit-field-parent2-given-name-und-0-value'
  @parent2_phone_primary = 'edit-field-parent2-phone-primary-und-0-value'
  @parent2_phone_alternate = 'edit-field-parent2-phone-alternate-und-0-value'
  @parent2_address = 'edit-field-parent2-address-und-0-value'
  @parent2_apartment = 'edit-field-parent2-apartment-und-0-value'
  @parent2_city = 'edit-field-parent2-city-und-0-value'
  @parent2_postal = 'edit-field-parent2-postal-und-0-value'
  @child1_surname = 'edit-field-child1-surname-und-0-value'
  @child1_given_name = 'edit-field-child1-given-name-und-0-value'
  @child1_dob_year = 'edit-field-child1-dob-und-0-value-year'
  @child1_dob_month = 'edit-field-child1-dob-und-0-value-month'
  @child1_dob_day = 'edit-field-child1-dob-und-0-value-day'
  @child1_current_school = 'edit-field-child1-current-school-und'
  @child2_surname = 'edit-field-child2-surname-und-0-value'
  @child2_given_name = 'edit-field-child2-given-name-und-0-value'
  @child2_dob_year = 'edit-field-child2-dob-und-0-value-year'
  @child2_dob_month = 'edit-field-child2-dob-und-0-value-month'
  @child2_dob_day = 'edit-field-child2-dob-und-0-value-day'
  @child2_current_school = 'edit-field-child2-current-school-und'
  @child3_surname = 'edit-field-child3-surname-und-0-value'
  @child3_given_name = 'edit-field-child3-given-name-und-0-value'
  @child3_dob_year = 'edit-field-child3-dob-und-0-value-year'
  @child3_dob_month = 'edit-field-child3-dob-und-0-value-month'
  @child3_dob_day = 'edit-field-child3-dob-und-0-value-day'
  @child3_current_school = 'edit-field-child3-current-school-und'
  @child4_surname = 'edit-field-child4-surname-und-0-value'
  @child4_given_name = 'edit-field-child4-given-name-und-0-value'
  @child4_dob_year = 'edit-field-child4-dob-und-0-value-year'
  @child4_dob_month = 'edit-field-child4-dob-und-0-value-month'
  @child4_dob_day = 'edit-field-child4-dob-und-0-value-day'
  @child4_current_school = 'edit-field-child4-current-school-und'
  @sibling1_surname = 'edit-field-sibling1-surname-und-0-value'
  @sibling1_given_name = 'edit-field-sibling1-given-name-und-0-value'
  @sibling1_grade = 'edit-field-sibling1-grade-und'
  @sibling1_school = 'edit-field-sibling1-school-und'
  @sibling2_surname = 'edit-field-sibling2-surname-und-0-value'
  @sibling2_given_name = 'edit-field-sibling2-given-name-und-0-value'
  @sibling2_grade = 'edit-field-sibling2-grade-und'
  @sibling2_school = 'edit-field-sibling2-school-und'
  @sibling3_surname = 'edit-field-sibling3-surname-und-0-value'
  @sibling3_given_name = 'edit-field-sibling3-given-name-und-0-value'
  @sibling3_grade = 'edit-field-sibling3-grade-und'
  @sibling3_school = 'edit-field-sibling3-school-und'
  @school_first_choice = 'edit-field-school-first-choice-und'
  @school_second_choice = 'edit-field-school-second-choice-und'
  @school_third_choice = 'edit-field-school-third-choice-und'
  @verified = 'edit-field-verified-und'
  @disclaimed = 'edit-field-disclaimed-und'
end

def fill_in_form
  fill_in('edit-field-parent1-surname-und-0-value', :with => 'PSurname1')
  fill_in('edit-field-parent1-given-name-und-0-value', :with => 'PGiven1')
  fill_in('edit-field-parent1-phone-primary-und-0-value', :with => '111-111-1111')
  fill_in('edit-field-parent1-phone-alternate-und-0-value', :with => '111-111-2222')
  fill_in('edit-field-parent1-address-und-0-value', :with => '1 Main St.')
  fill_in('edit-field-parent1-apartment-und-0-value', :with => '1B')
  fill_in('edit-field-parent1-city-und-0-value', :with => 'Kitchener')
  fill_in('edit-field-parent1-postal-und-0-value', :with => 'A1A 1A1')

  click_link('Parent/Guardian 2 (Optional)')
  fill_in('edit-field-parent2-surname-und-0-value', :with => 'PSurname2')
  fill_in('edit-field-parent2-given-name-und-0-value', :with => 'PGiven2')
  fill_in('edit-field-parent2-phone-primary-und-0-value', :with => '222-222-2222')
  fill_in('edit-field-parent2-phone-alternate-und-0-value', :with => '222-222-3333')
  fill_in('edit-field-parent2-address-und-0-value', :with => '2 Main St.')
  fill_in('edit-field-parent2-apartment-und-0-value', :with => '2B')
  fill_in('edit-field-parent2-city-und-0-value', :with => 'Waterloo')
  fill_in('edit-field-parent2-postal-und-0-value', :with => 'B2B 2B2')

  fill_in('edit-field-child1-surname-und-0-value', :with => 'CSurname1')
  fill_in('edit-field-child1-given-name-und-0-value', :with => 'CGiven1')
  select('2007', :from => 'edit-field-child1-dob-und-0-value-year')
  select('Jan', :from => 'edit-field-child1-dob-und-0-value-month')
  select('1', :from => 'edit-field-child1-dob-und-0-value-day')
  select('Abraham Erb', :from => 'edit-field-child1-current-school-und')

  click_link('Child 2 (Optional)')
  fill_in('edit-field-child2-surname-und-0-value', :with => 'CSurname2')
  fill_in('edit-field-child2-given-name-und-0-value', :with => 'CGiven2')
  select('2007', :from => 'edit-field-child2-dob-und-0-value-year')
  select('Feb', :from => 'edit-field-child2-dob-und-0-value-month')
  select('2', :from => 'edit-field-child2-dob-und-0-value-day')
  select('A.R. Kaufman', :from => 'edit-field-child2-current-school-und')

  click_link('Child 3 (Optional)')
  fill_in('edit-field-child3-surname-und-0-value', :with => 'CSurname3')
  fill_in('edit-field-child3-given-name-und-0-value', :with => 'CGiven3')
  select('2007', :from => 'edit-field-child3-dob-und-0-value-year')
  select('Mar', :from => 'edit-field-child3-dob-und-0-value-month')
  select('3', :from => 'edit-field-child3-dob-und-0-value-day')
  select('Alpine', :from => 'edit-field-child3-current-school-und')

  click_link('Child 4 (Optional)')
  fill_in('edit-field-child4-surname-und-0-value', :with => 'CSurname4')
  fill_in('edit-field-child4-given-name-und-0-value', :with => 'CGiven4')
  select('2007', :from => 'edit-field-child4-dob-und-0-value-year')
  select('Apr', :from => 'edit-field-child4-dob-und-0-value-month')
  select('4', :from => 'edit-field-child4-dob-und-0-value-day')
  select('Avenue Road', :from => 'edit-field-child4-current-school-und')

  click_link('Sibling 1 (Optional)')
  fill_in('edit-field-sibling1-surname-und-0-value', :with => 'SSurname1')
  fill_in('edit-field-sibling1-given-name-und-0-value', :with => 'SGiven1')
  select('Grade 1', :from => 'edit-field-sibling1-grade-und')
  select('Westmount', :from => 'edit-field-sibling1-school-und')

  click_link('Sibling 2 (Optional)')
  fill_in('edit-field-sibling2-surname-und-0-value', :with => 'SSurname2')
  fill_in('edit-field-sibling2-given-name-und-0-value', :with => 'SGiven2')
  select('Grade 2', :from => 'edit-field-sibling2-grade-und')
  select('Westvale', :from => 'edit-field-sibling2-school-und')

  click_link('Sibling 3 (Optional)')
  fill_in('edit-field-sibling3-surname-und-0-value', :with => 'SSurname3')
  fill_in('edit-field-sibling3-given-name-und-0-value', :with => 'SGiven3')
  select('Grade 3', :from => 'edit-field-sibling3-grade-und')
  select('Williamsburg', :from => 'edit-field-sibling3-school-und')

  select('Baden', :from => 'edit-field-school-first-choice-und')
  select('Hespeler', :from => 'edit-field-school-second-choice-und')
  select('Highland', :from => 'edit-field-school-third-choice-und')

  check('edit-field-verified-und')
  check('edit-field-disclaimed-und')
end


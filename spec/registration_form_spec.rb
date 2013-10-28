require 'spec_helper'

describe "The Partial French Immersion Registration Form", :type => :request do
  before(:all) do
    set_form_elements
    log_into_site
  end

  before(:each) do
    visit @form_url
  end

  it 'should accept a valid submission' do
    fill_in_form
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end

  it 'should require a Surname for Parent 1' do
    fill_in_form
    fill_in(@parent1_surname, :with => '')
    click_on('Save')
    page.should have_content('Surname field is required.')
  end
  it 'should require a Given Name for Parent 1' do
    fill_in_form
    fill_in(@parent1_given_name, :with => '')
    click_on('Save')
    page.should have_content('Given Name(s) field is required.')
  end
  it 'should require a Primary Phone for Parent 1' do
    fill_in_form
    fill_in(@parent1_phone_primary, :with => '')
    click_on('Save')
    page.should have_content('Phone (Primary) field is required.')
  end
  it 'should require a Street Address for Parent 1' do
    fill_in_form
    fill_in(@parent1_address, :with => '')
    click_on('Save')
    page.should have_content('Street Address field is required.')
  end
  it 'should require a City for Parent 1' do
    fill_in_form
    fill_in(@parent1_city, :with => '')
    click_on('Save')
    page.should have_content('City field is required.')
  end
  it 'should require a Postal Code for Parent 1' do
    fill_in_form
    fill_in(@parent1_postal, :with => '')
    click_on('Save')
    page.should have_content('Postal Code field is required.')
  end
  it 'should not require an Alternate Phone for Parent 1' do
    fill_in_form
    fill_in(@parent1_phone_alternate, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require an Apartment Number for Parent 1' do
    fill_in_form
    fill_in(@parent1_apartment, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end

  it 'should not require a Surname for Parent 2' do
    fill_in_form
    fill_in(@parent2_surname, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Given Name for Parent 2' do
    fill_in_form
    fill_in(@parent2_given_name, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Primary Phone for Parent 1' do
    fill_in_form
    fill_in(@parent2_phone_primary, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Street Address for Parent 1' do
    fill_in_form
    fill_in(@parent2_address, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a City for Parent 1' do
    fill_in_form
    fill_in(@parent2_city, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Postal Code for Parent 1' do
    fill_in_form
    fill_in(@parent2_postal, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require an Alternate Phone for Parent 1' do
    fill_in_form
    fill_in(@parent2_phone_alternate, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require an Apartment Number for Parent 1' do
    fill_in_form
    fill_in(@parent2_apartment, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end

  it 'should require a Surname for Child 1' do
    fill_in_form
    fill_in(@child1_surname, :with => '')
    click_on('Save')
    page.should have_content('Surname field is required.')
  end
  it 'should require a Given Name for Child 1' do
    fill_in_form
    fill_in(@child1_given_name, :with => '')
    click_on('Save')
    page.should have_content('Given Name(s) field is required.')
  end
  it 'should require a Date of Birth for Child 1' do
    fill_in_form
    select('', :from => @child1_dob_year)
    select('', :from => @child1_dob_month)
    select('', :from => @child1_dob_day)
    click_on('Save')
    page.should have_content('A valid date is required for Date of Birth.')
  end
  it 'should require a Current School for Child 1' do
    fill_in_form
    fill_in(@child1_current_school, :with => '')
    click_on('Save')
    page.should have_content('Current School field is required.')
  end

  it 'should not require a Surname for Child 2' do
    fill_in_form
    fill_in(@child2_surname, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Given Name for Child 2' do
    fill_in_form
    fill_in(@child2_given_name, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Date of Birth for Child 2' do
    pending
    fill_in_form
    fill_in(@child2_dob_year, :with => '')
    fill_in(@child2_dob_month, :with => '')
    fill_in(@child2_dob_day, :with => '')
    click_on('Save')
  end
  it 'should not require a Current School for Child 2' do
    pending
    fill_in_form
    fill_in(@child2_current_school, :with => '')
    click_on('Save')
  end

  it 'should not require a Surname for Child 3' do
    fill_in_form
    fill_in(@child3_surname, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Given Name for Child 3' do
    fill_in_form
    fill_in(@child3_given_name, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Date of Birth for Child 3' do
    pending
    fill_in_form
    fill_in(@child3_dob_year, :with => '')
    fill_in(@child3_dob_month, :with => '')
    fill_in(@child3_dob_day, :with => '')
    click_on('Save')
  end
  it 'should not require a Current School for Child 3' do
    pending
    fill_in_form
    fill_in(@child3_current_school, :with => '')
    click_on('Save')
  end

  it 'should not require a Surname for Child 4' do
    fill_in_form
    fill_in(@child4_surname, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Given Name for Child 4' do
    fill_in_form
    fill_in(@child4_given_name, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Date of Birth for Child 4' do
    pending
    fill_in_form
    fill_in(@child4_dob_year, :with => '')
    fill_in(@child4_dob_month, :with => '')
    fill_in(@child4_dob_day, :with => '')
    click_on('Save')
  end
  it 'should not require a Current School for Child 4' do
    pending
    fill_in_form
    fill_in(@child4_current_school, :with => '')
    click_on('Save')
  end

  it 'should not require a Surname for Sibling 1' do
    fill_in_form
    fill_in(@sibling1_surname, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Given Name for Sibling 1' do
    fill_in_form
    fill_in(@sibling1_given_name, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Grade for Sibling 1' do
    pending
    fill_in_form
    fill_in(@sibling1_grade, :with => '')
    click_on('Save')
  end
  it 'should not require a School for Sibling 1' do
    pending
    fill_in_form
    fill_in(@sibling1_school, :with => '')
    click_on('Save')
  end

  it 'should not require a Surname for Sibling 2' do
    fill_in_form
    fill_in(@sibling2_surname, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Given Name for Sibling 2' do
    fill_in_form
    fill_in(@sibling2_given_name, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Grade for Sibling 2' do
    pending
    fill_in_form
    fill_in(@sibling2_grade, :with => '')
    click_on('Save')
  end
  it 'should not require a School for Sibling 2' do
    pending
    fill_in_form
    fill_in(@sibling2_school, :with => '')
    click_on('Save')
  end

  it 'should not require a Surname for Sibling 3' do
    fill_in_form
    fill_in(@sibling3_surname, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Given Name for Sibling 3' do
    fill_in_form
    fill_in(@sibling3_given_name, :with => '')
    click_on('Save')
    page.should have_content('Partial French Immersion Registration has been created.')
  end
  it 'should not require a Grade for Sibling 3' do
    pending
    fill_in_form
    fill_in(@sibling3_grade, :with => '')
    click_on('Save')
  end
  it 'should not require a School for Sibling 3' do
    pending
    fill_in_form
    fill_in(@sibling3_school, :with => '')
    click_on('Save')
  end

  it 'should require a First Choice (Home School) school selection' do
    fill_in_form
    fill_in(@school_first_choice, :with => '')
    click_on('Save')
    page.should have_content('First Choice (Home School) field is required.')
  end
  it 'should not require a Second Choice school selection' do
    pending
    fill_in_form
    fill_in(@school_second_choice, :with => '')
    click_on('Save')
  end
  it 'should not require a Third Choice school selection' do
    pending
    fill_in_form
    fill_in(@school_third_choice, :with => '')
    click_on('Save')
  end

  it 'should require the user check the Verify Information checkbox' do
    fill_in_form
    uncheck(@varified)
    click_on('Save')
    page.should have_content('I have reviewed and have confirmed that the information entered is complete and accurate. field is required.')
  end
  it 'should require the user check the Disclaimer checkbox' do
    fill_in_form
    uncheck(@disclaimed)
    click_on('Save')
    page.should have_content('I have read and understand the information above. field is required.')
  end

  it 'should require a well formed home phone number' do
    pending
  end
end


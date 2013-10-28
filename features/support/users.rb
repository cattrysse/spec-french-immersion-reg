# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :email do |n|
    address_fragment = (0...8).map{65.+(rand(25)).chr}.join
    "#{address_fragment}@ramjet.wrdsb.ca"
  end

  factory :user, :class => 'Drupal::User' do
    name 'Test User'
    email {FactoryGirl.generate(:email)}
    password 'please'
    password_confirmation 'please'
  end
end


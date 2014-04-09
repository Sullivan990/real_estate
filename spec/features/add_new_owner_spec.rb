require 'spec_helper'

feature "submit a new building record", %Q{
  As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners
  } do

  # Acceptance Criteria
  # * I must specify a first name, last name, and email address
  # * I can optionally specify a company name
  # * If I do not specify the required information, I am presented with errors
  # * If I specify the required information, the owner is recorded and I am redirected to enter another new owner

  scenario 'a user submits a valid owner' do
    visit new_owner_path

    fill_in 'First Name', with: 'Daniel'
    fill_in 'Last Name', with: 'Craig'
    fill_in 'Email', with: 'TheBond007@mi6.gov'

    click_button 'Add Owner'
    expect(page).to have_content 'Owner successfully added.'
    expect(Owner.count).to eq(1)
  end

  scenario 'a user submits an invalid owner' do
    visit new_owner_path

    click_button 'Add Owner'

    expect(page).to have_content "can't be blank"
    expect(Owner.count).to eq(0)
  end
end

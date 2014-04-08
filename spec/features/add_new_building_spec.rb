require 'spec_helper'

feature "submit a new building record", %Q{
  As a user
  I want to be able to add a building to the database
  So I can record and keep list of the buildings.
  } do

  # Acceptance Criteria
  # * I must specify a street address, city, state, and postal code
  # * Only US states can be specified
  # * I can optionally specify a description of the building
  # * If I enter all of the required information in the required format, the building is recorded.
  # * If I do not specify all of the required information in the required formats, the building is not recorded and I am presented with errors
  # * Upon successfully creating a building, I am redirected so that I can record another building.

  scenario 'a user submits a valid building record' do
    visit new_building_path

    fill_in 'Street Address', with: '9 Lakeshore Drive'
    fill_in 'City', with: 'Medway'
    page.select 'MA', from: 'State'
    fill_in 'Postal Code', with: '02053'

    click_button 'Add Building'
    expect(page).to have_content 'Building successfully added.'
    expect(Building.count).to eq(1)
  end

  scenario 'a user submits an invalid building record'

end

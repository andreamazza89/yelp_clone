require 'rails_helper'

feature 'Restaurant features' do

  context 'when no restaurants have been added' do

    scenario 'index page should contain a link to create a new restaurant' do
      visit('/restaurants')
      expect(page).to have_content('No restaurants yet, please add one and get reviewing!')
      expect(page).to have_link('Add a new restaurant')
    end

    scenario 'user can add a restaurant, then see it displayed on the page' do
      visit('/restaurants/new')
      fill_in('Name', with: "Andrea's Bistro")
      fill_in('Description', with: "Fantastic")
      fill_in('Rating', with: '5')
      click_button('Save Restaurant')
      expect(page).to have_content("Andrea's Bistro")
    end
  end

  context 'A few restaurants have been created' do
    let(:restaurant1) {{'Name' => "Andrea's Bistro",
                        'Description' => "Fantastic",
                        'Rating' => '5' }}
    let(:restaurant2) {{'Name' => "Andrea's Cafe",
                        'Description' => "Fantastic1",
                        'Rating' => '5' }}
    before(:each) do
      create_new_restaurant(restaurant1)
      create_new_restaurant(restaurant2)
    end

    scenario 'index page shows the existing restaurants' do
      visit('/restaurants')
      expect(page).to have_content(restaurant1['Name'])
      expect(page).to have_content(restaurant2['Name'])
    end

    scenario 'user can delete a restaurant, this is removed from the index' do
      click_button('Delete')
      expect(page).to_not have_content(restaurant2['Name'])
    end

  end
end

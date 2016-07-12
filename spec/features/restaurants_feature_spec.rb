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
end

require 'rails_helper'
feature 'restaurant features' do
  scenario 'user can add a restaurant with name, description and rating' do
    visit('/restaurants/new')
    fill_in('Name', with: "Andrea's Bistro")
    fill_in('Description', with: "Fantastic")
    fill_in('Rating', with: '5')
    click_button('Save Restaurant')
    expect(page).to have_content("Andrea's Bistro")
  end
end

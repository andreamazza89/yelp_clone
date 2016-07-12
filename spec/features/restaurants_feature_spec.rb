require 'rails_helper'
feature 'restaurant features' do
  scenario 'user can add a restaurant with name, description and rating' do
    visit('/restaurants/new')
    fill_in('name', with: "Andrea's Bistro")
    fill_in('description', with: "Fantastic")
    fill_in('rating', with: '5')
    expect(page).to have_content("Andrea's Bistro")
  end
end

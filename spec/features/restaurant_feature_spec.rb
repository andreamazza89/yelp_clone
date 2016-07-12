require 'rails_helper.rb'

feature 'creating a restaurant' do

  scenario 'can create a restaurant' do
    visit '/'
    click_link 'Add new restaurant'
    fill_in 'restaurant_name', with: 'Randys'
    fill_in 'restaurant_description', with: 'good food here'
    click_button 'Save Restaurant'
    expect(page).to have_content('good food here')
  end

end

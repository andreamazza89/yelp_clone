describe 'Review features' do

  before { Restaurant.create name: 'KFC' }

  scenario 'user can add a restaurant review and see it displayed on the main page' do
    visit('/restaurants');
    click_link('Add review')
    fill_in('Thoughts', with: 'Loved it')
    select('5', from: 'Rating')
    click_button('Save Review')
    visit('/restaurants') 
    expect(page).to have_content('Loved it') 
  end
end

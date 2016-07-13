describe 'Review features' do

  let(:restaurant1) {{'Name'        => "Andrea's Bistro",
                      'Description' => "Fantastic"
                    }}

  let(:review1)     {{'Content' => "Loved it",
                      'rating'  => 5
                    }}

  xscenario 'user can add a restaurant review and see it displayed on the main page' do
    create_new_restaurant('/restaurants/new', restaurant1)
    visit('/restaurants');
    click_button('Add review')
    fill_in('Content', 'Loved it')
    fill_in('rating', 5)
    click_button('Save Review')
    
    
  end
end

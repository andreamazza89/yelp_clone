def create_new_restaurant (details)
  visit('/restaurants/new')
  details.each do |property|
    fill_in(property[0], with: property[1])
  end
  click_button('Save Restaurant')
end

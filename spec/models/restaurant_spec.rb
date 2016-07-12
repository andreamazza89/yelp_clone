require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
  # it "is valid with valid attributes"
  it "is not valid without a name" do
  	restaurant = Restaurant.new
  	restaurant.add_name('randy')
    expect(restaurant.name).to equal('randy')
   
  end
  it "is not valid without a description"
  it "is not valid without a start_date"
  it "is not valid without a end_date"
end

# require 'rails_helper'

# RSpec.describe Restaurant, type: :model do
#   it "should be be_valid" do
#     expect(restaurant).to be_valid

#   end

#   it "should accept a name" do
#     restaurant = Restaurant.new
#     expect(restaurant.name).to be_truthy
    
#   end

# end
require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
  # it "is valid with valid attributes"
  it "should accept a name" do
  	restaurant = Restaurant.new
  	restaurant.add_name('randy')
    expect(restaurant.name).to eq('randy')

  end
  it "should accept a description" do
    restaurant = Restaurant.new
    restaurant.add_description('It has great burgers!')
    expect(restaurant.description).to eq('It has great burgers!')
  end
  it "should have an average rating" do
    restaurant = Restaurant.new
    restaurant.add_rating(5)
    expect(restaurant.avgrating).to eq(5)
  end
  it "is not valid without a name, rating, description" do
    restaurant = Restaurant.new
    restaurant.add_name(nil)
    restaurant.add_description(nil)
    restaurant.add_rating(nil)
    expect(restaurant).to_not be_valid
  end
  it "is valid without a name, rating, description" do
    restaurant = Restaurant.new
    restaurant.add_name('Randys')
    restaurant.add_description('great food')
    restaurant.add_rating(5)
    expect(restaurant).to be_valid
  end

  it "is not valid without a rating" do
    restaurant = Restaurant.new
    restaurant.add_name(nil)
    restaurant.add_description('great food')
    restaurant.add_rating(5)
    expect(restaurant).to_not be_valid
  end

end

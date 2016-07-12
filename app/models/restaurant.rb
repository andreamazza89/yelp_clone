class Restaurant < ActiveRecord::Base

# validates_presence_of :name, :description
validates :name, presence: true
validates :description, presence: true
validates :avgrating, presence: true
attr_reader :name, :description, :avgrating

  def add_name(name)
    @name = name
  end

  def add_description(description)
    @description = description
  end

  def add_rating(avgrating)
    @avgrating = avgrating
  end

end

# Failure/Error: expect(restaurant.name).to equal('randy')
#
#        expected #<String:70163536030800> => "randy"
#             got #<String:70163536031940> => "randy"
#
#        Compared using equal?, which compares object identity,
#        but expected and actual are not the same object. Use
#        `expect(actual).to eq(expected)` if you don't care about
#        object identity in this example.
#      # ./spec/models/restaurant_spec.rb:8:in `block (2 levels) in <top (required)>'

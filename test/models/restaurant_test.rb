require "test_helper"

class RestaurantTest < ActiveSupport::TestCase
  def setup
    @restaurant = Restaurant.new(name:"Burger King", location:"415 South Street", price_range: 2)
  end

  test "name should be present" do
    @restaurant.name = "        "
    assert_not @restaurant.valid?
  end

  test "location should be present" do
    @restaurant.location = "        "
    assert_not @restaurant.valid?
  end

  test "price range should be present" do
    @restaurant.price_range = "             "
    assert_not @restaurant.valid?
  end

  test "name should not be too long" do
    @restaurant.name = "a" * 51
    assert_not @restaurant.valid?
  end

  test "location should not be too long" do
    @restaurant.location = "a" * 244 
    assert_not @restaurant.valid?
  end

  test "name should be unique" do
    restaurant2 = Restaurant.new(name: "Burger King", location: "415 South Street", price_range: 2)
    restaurant2.save
    assert_not restaurant2.valid?
  end
end

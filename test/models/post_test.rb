require "test_helper"

class PostTest < ActiveSupport::TestCase

  test "post should have content" do
    @post = Post.new(user_id: 1, content: " ", restaurant_id: 21)
    assert_equal(false,@post.save)
    
  end

  test "posts should have a user id" do
    @post = Post.new(user_id: nil, content: "this is an example post", restaurant_id: 21)
    assert_equal(false,@post.save)
  end


  test "posts should have a restuarant id" do
    @post = Post.new(user_id: 1, content: "this is an example post", restaurant_id: nil)
    assert_equal(false,@post.save)
  end

end

require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user should have a name" do
    @user = User.new(name: " ", email: "testuser@example.com", age: 21, bio: "example bio")
    assert_equal(false,@user.save)
    @user = User.new(name: "testUser", email:"testuser@example.com", age: nil 21, bio: "example bio")
    assert_equal(true,@user.save)
  end

  test "user email has to be present" do
    @user = User.new(name: "testUser", email:" ", age: 21, bio: "example bio")
    assert_equal(false,@user.save)

    @user = User.new(name: "testUser", email:"testuser@example.com", age: 21, bio: "example bio")
    assert_equal(true,@user.save)
  end

  test "user email has to be unique" do
    @user = User.new(name: "testUser", email:"testuser@example.com", age: 21, bio: "example bio")
    @user2 = User.new(name: "testUser2", email:"testuser@example.com", age: 21, bio: "example bio 2")
    assert_equal(true,@user.save)
    assert_equal(false,@user2.save)

    @user = User.new(name: "testUser", email:"testuser@example.com", age: 21, bio: "example bio")
    @user2 = User.new(name: "testUser2", email:"testuser2@example.com", age: 21, bio: "example bio 2")
    assert_equal(true,@user.save)
    assert_equal(true,@user2.save)

  end 

  test "user age has to be present" do
    @user = User.new(name: "testUser", email:"testuser@example.com", age: , bio: "example bio")
    assert_equal(false,@user.save)

    @user = User.new(name: "testUser", email:"testuser@example.com", age: 22, bio: "example bio")
    assert_equal(true,@user.save)
  end

  test "user bio has to be present" do
    @user = User.new(name: "testUser", email:"testuser@example.com", age: , bio: " ")
    assert_equal(false,@user.save)

    @user = User.new(name: "testUser", email:"testuser@example.com", age: 22, bio: "example bio")
    assert_equal(true,@user.save)

  end
end

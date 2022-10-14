require "test_helper"

class FollowTest < ActiveSupport::TestCase
  def setup
    @user_0 = User.create(name: "Pito Salas", bio: "Male", age: 50, email: "pitosalas@gmail.com", password: "pitosalas12345")
    @user_1 = User.create(name: "Zixin Zhang", bio: "Male", age: 24, email: "zixinzhang@gmail.com", password: "zixinzhang12345")
    @user_2 = User.create(name: "Aarti Jain", bio: "Female", age: 24, email: "aartijain@gmail.com", password: "aartijain12345")
    @user_3 = User.create(name: "Brian Liao", bio: "Male", age: 24, email: "brianliao@gmail.com", password: "brianliao12345")
    @user_4 = User.create(name: "Mahmoud Salah", bio: "Male", age: 24, email: "mahmoudsalah@gmail.com", password: "mahmoudsalah12345")
    @relationship_1 = Follow.create(follower_id: @user_1.id, following_id: @user_0.id)
    @relationship_2 = Follow.create(follower_id: @user_2.id, following_id: @user_0.id)
    @relationship_3 = Follow.create(follower_id: @user_3.id, following_id: @user_0.id)
    @relationship_4 = Follow.create(follower_id: @user_4.id, following_id: @user_0.id)
    @relationship_5 = Follow.create(follower_id: @user_0.id, following_id: @user_1.id)
    @relationship_6 = Follow.create(follower_id: @user_0.id, following_id: @user_2.id)
  end

  test "follower_id and following_id shouldn't be nil" do
    @wrong_relationship = Follow.new(follower_id: User.last.id, following_id:"")
    assert_equal(false, @wrong_relationship.save)
    @wrong_relationship_2 = Follow.new(follower_id:"", following_id: User.last.id, )
    assert_equal(false, @wrong_relationship_2.save)
  end

  test "follower_id and following_id should exist in database" do
    @wrong_relationship = Follow.new(follower_id: User.last.id, following_id: User.last.id + 1)
    assert_equal(false, @wrong_relationship.save)
  end

  test "follow records should be unique" do
    @duplicate_relationship = @relationship_1.dup
    assert_raises(Exception) {@duplicate_relationship.save}
  end

  test "user should have followers" do
    assert_equal(@user_0.followers.size, 4)
    assert_equal(@user_1.followers.size, 1)
    assert_equal(@user_2.followers.size, 1)
  end

  test "user should have followings" do
    assert_equal(@user_0.followings.size, 2)
    assert_equal(@user_1.followings.size, 1)
    assert_equal(@user_2.followings.size, 1)
    assert_equal(@user_3.followings.size, 1)
    assert_equal(@user_4.followings.size, 1)
  end

  test "unfollow should work" do
    @relationship_1.delete
    @relationship_2.delete
    @relationship_3.delete
    @relationship_4.delete
    assert_equal(@user_0.followers.size, 0)
  end

end

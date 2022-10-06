require "test_helper"

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(post_id:1, user_id:1, content:"content")
  end

  test "name should be present" do
    @comment.content = "        "
    assert_not @comment.valid?
  end

  test "post id should be present" do
    @comment.post_id = "        "
    assert_not @comment.valid?
  end

  test "user id should be present" do
    @comment.user_id = "             "
    assert_not @comment.valid?
  end

  test "content should not be too long" do
    @comment.content = "a" * 20000
    assert_not @comment.valid?
  end
end

require 'test_helper'

class CommentFoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment_foods_create_url
    assert_response :success
  end

  test "should get destroy" do
    get comment_foods_destroy_url
    assert_response :success
  end

end

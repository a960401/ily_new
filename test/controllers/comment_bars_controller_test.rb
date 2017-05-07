require 'test_helper'

class CommentBarsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment_bars_create_url
    assert_response :success
  end

  test "should get destroy" do
    get comment_bars_destroy_url
    assert_response :success
  end

end

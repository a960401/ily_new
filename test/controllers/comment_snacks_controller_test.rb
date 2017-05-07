require 'test_helper'

class CommentSnacksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment_snacks_create_url
    assert_response :success
  end

  test "should get destroy" do
    get comment_snacks_destroy_url
    assert_response :success
  end

end

require 'test_helper'

class UserFollowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_followed = user_followeds(:one)
  end

  test "should get index" do
    get user_follows_url, as: :json
    assert_response :success
  end

  test "should create user_follow" do
    assert_difference('UserFollowed.count') do
      post user_follows_url, params: { user_follow: { follower_id: @user_follow.follower_id, user_followed_id: @user_follow.user_followed_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_follow" do
    get user_follow_url(@user_follow), as: :json
    assert_response :success
  end

  test "should update user_follow" do
    patch user_follow_url(@user_follow), params: { user_follow: { follower_id: @user_followed.follower_id, user_followed_id: @user_followed.user_followed_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_follow" do
    assert_difference('UserFollow.count', -1) do
      delete user_followed_url(@user_follow), as: :json
    end

    assert_response 204
  end
end

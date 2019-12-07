require 'test_helper'

class LikedEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liked_event = liked_events(:one)
  end

  test "should get index" do
    get liked_events_url, as: :json
    assert_response :success
  end

  test "should create liked_event" do
    assert_difference('LikedEvent.count') do
      post liked_events_url, params: { liked_event: { event_id: @liked_event.event_id, user_id: @liked_event.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show liked_event" do
    get liked_event_url(@liked_event), as: :json
    assert_response :success
  end

  test "should update liked_event" do
    patch liked_event_url(@liked_event), params: { liked_event: { event_id: @liked_event.event_id, user_id: @liked_event.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy liked_event" do
    assert_difference('LikedEvent.count', -1) do
      delete liked_event_url(@liked_event), as: :json
    end

    assert_response 204
  end
end

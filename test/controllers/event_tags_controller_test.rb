require 'test_helper'

class EventTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_tag = event_tags(:one)
  end

  test "should get index" do
    get event_tags_url, as: :json
    assert_response :success
  end

  test "should create event_tag" do
    assert_difference('EventTag.count') do
      post event_tags_url, params: { event_tag: { event_id: @event_tag.event_id, tag_id: @event_tag.tag_id } }, as: :json
    end

    assert_response 201
  end

  test "should show event_tag" do
    get event_tag_url(@event_tag), as: :json
    assert_response :success
  end

  test "should update event_tag" do
    patch event_tag_url(@event_tag), params: { event_tag: { event_id: @event_tag.event_id, tag_id: @event_tag.tag_id } }, as: :json
    assert_response 200
  end

  test "should destroy event_tag" do
    assert_difference('EventTag.count', -1) do
      delete event_tag_url(@event_tag), as: :json
    end

    assert_response 204
  end
end

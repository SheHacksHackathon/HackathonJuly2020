require 'test_helper'

class GathersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gather = gathers(:one)
  end

  test "should get index" do
    get gathers_url, as: :json
    assert_response :success
  end

  test "should create gather" do
    assert_difference('Gather.count') do
      post gathers_url, params: { gather: { event_desc: @gather.event_desc, event_end: @gather.event_end, event_name: @gather.event_name, event_start: @gather.event_start, host_name: @gather.host_name, venue_detail: @gather.venue_detail, venue_id: @gather.venue_id } }, as: :json
    end

    assert_response 201
  end

  test "should show gather" do
    get gather_url(@gather), as: :json
    assert_response :success
  end

  test "should update gather" do
    patch gather_url(@gather), params: { gather: { event_desc: @gather.event_desc, event_end: @gather.event_end, event_name: @gather.event_name, event_start: @gather.event_start, host_name: @gather.host_name, venue_detail: @gather.venue_detail, venue_id: @gather.venue_id } }, as: :json
    assert_response 200
  end

  test "should destroy gather" do
    assert_difference('Gather.count', -1) do
      delete gather_url(@gather), as: :json
    end

    assert_response 204
  end
end

require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url, as: :json
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post tickets_url, params: { ticket: { aisle: @ticket.aisle, event_date: @ticket.event_date, event_id: @ticket.event_id, event_time: @ticket.event_time, purchase_date: @ticket.purchase_date, purchase_price: @ticket.purchase_price, scan_code: @ticket.scan_code, seat: @ticket.seat, section: @ticket.section, user_id: @ticket.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show ticket" do
    get ticket_url(@ticket), as: :json
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { aisle: @ticket.aisle, event_date: @ticket.event_date, event_id: @ticket.event_id, event_time: @ticket.event_time, purchase_date: @ticket.purchase_date, purchase_price: @ticket.purchase_price, scan_code: @ticket.scan_code, seat: @ticket.seat, section: @ticket.section, user_id: @ticket.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete ticket_url(@ticket), as: :json
    end

    assert_response 204
  end
end
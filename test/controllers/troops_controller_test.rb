require 'test_helper'

class TroopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @troop = troops(:one)
  end

  test "should get index" do
    get troops_url
    assert_response :success
  end

  test "should get new" do
    get new_troop_url
    assert_response :success
  end

  test "should create troop" do
    assert_difference('Troop.count') do
      post troops_url, params: { troop: { arrival_date: @troop.arrival_date, arrival_time: @troop.arrival_time, cargo_date: @troop.cargo_date, city_id: @troop.city_id, close_code: @troop.close_code, dte: @troop.dte, expiration_date: @troop.expiration_date, liveweight: @troop.liveweight, provider_id: @troop.provider_id, quantity_control: @troop.quantity_control, seal_number: @troop.seal_number, transport_id: @troop.transport_id, troop_number: @troop.troop_number, turn_id: @troop.turn_id } }
    end

    assert_redirected_to troop_url(Troop.last)
  end

  test "should show troop" do
    get troop_url(@troop)
    assert_response :success
  end

  test "should get edit" do
    get edit_troop_url(@troop)
    assert_response :success
  end

  test "should update troop" do
    patch troop_url(@troop), params: { troop: { arrival_date: @troop.arrival_date, arrival_time: @troop.arrival_time, cargo_date: @troop.cargo_date, city_id: @troop.city_id, close_code: @troop.close_code, dte: @troop.dte, expiration_date: @troop.expiration_date, liveweight: @troop.liveweight, provider_id: @troop.provider_id, quantity_control: @troop.quantity_control, seal_number: @troop.seal_number, transport_id: @troop.transport_id, troop_number: @troop.troop_number, turn_id: @troop.turn_id } }
    assert_redirected_to troop_url(@troop)
  end

  test "should destroy troop" do
    assert_difference('Troop.count', -1) do
      delete troop_url(@troop)
    end

    assert_redirected_to troops_url
  end
end

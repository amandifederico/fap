require 'test_helper'

class TroopDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @troop_detail = troop_details(:one)
  end

  test "should get index" do
    get troop_details_url
    assert_response :success
  end

  test "should get new" do
    get new_troop_detail_url
    assert_response :success
  end

  test "should create troop_detail" do
    assert_difference('TroopDetail.count') do
      post troop_details_url, params: { troop_detail: { animal_id: @troop_detail.animal_id, fallen: @troop_detail.fallen, observartion: @troop_detail.observartion, quantity: @troop_detail.quantity, troop_id: @troop_detail.troop_id } }
    end

    assert_redirected_to troop_detail_url(TroopDetail.last)
  end

  test "should show troop_detail" do
    get troop_detail_url(@troop_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_troop_detail_url(@troop_detail)
    assert_response :success
  end

  test "should update troop_detail" do
    patch troop_detail_url(@troop_detail), params: { troop_detail: { animal_id: @troop_detail.animal_id, fallen: @troop_detail.fallen, observartion: @troop_detail.observartion, quantity: @troop_detail.quantity, troop_id: @troop_detail.troop_id } }
    assert_redirected_to troop_detail_url(@troop_detail)
  end

  test "should destroy troop_detail" do
    assert_difference('TroopDetail.count', -1) do
      delete troop_detail_url(@troop_detail)
    end

    assert_redirected_to troop_details_url
  end
end

require 'test_helper'

class SeqRangeTroopNumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seq_range_troop_number = seq_range_troop_numbers(:one)
  end

  test "should get index" do
    get seq_range_troop_numbers_url
    assert_response :success
  end

  test "should get new" do
    get new_seq_range_troop_number_url
    assert_response :success
  end

  test "should create seq_range_troop_number" do
    assert_difference('SeqRangeTroopNumber.count') do
      post seq_range_troop_numbers_url, params: { seq_range_troop_number: { rtn: @seq_range_troop_number.rtn } }
    end

    assert_redirected_to seq_range_troop_number_url(SeqRangeTroopNumber.last)
  end

  test "should show seq_range_troop_number" do
    get seq_range_troop_number_url(@seq_range_troop_number)
    assert_response :success
  end

  test "should get edit" do
    get edit_seq_range_troop_number_url(@seq_range_troop_number)
    assert_response :success
  end

  test "should update seq_range_troop_number" do
    patch seq_range_troop_number_url(@seq_range_troop_number), params: { seq_range_troop_number: { rtn: @seq_range_troop_number.rtn } }
    assert_redirected_to seq_range_troop_number_url(@seq_range_troop_number)
  end

  test "should destroy seq_range_troop_number" do
    assert_difference('SeqRangeTroopNumber.count', -1) do
      delete seq_range_troop_number_url(@seq_range_troop_number)
    end

    assert_redirected_to seq_range_troop_numbers_url
  end
end

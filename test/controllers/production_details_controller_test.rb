require 'test_helper'

class ProductionDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_detail = production_details(:one)
  end

  test "should get index" do
    get production_details_url
    assert_response :success
  end

  test "should get new" do
    get new_production_detail_url
    assert_response :success
  end

  test "should create production_detail" do
    assert_difference('ProductionDetail.count') do
      post production_details_url, params: { production_detail: { animal_id: @production_detail.animal_id, observation: @production_detail.observation, production_id: @production_detail.production_id, type_id: @production_detail.type_id, weight: @production_detail.weight, weight_control: @production_detail.weight_control } }
    end

    assert_redirected_to production_detail_url(ProductionDetail.last)
  end

  test "should show production_detail" do
    get production_detail_url(@production_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_detail_url(@production_detail)
    assert_response :success
  end

  test "should update production_detail" do
    patch production_detail_url(@production_detail), params: { production_detail: { animal_id: @production_detail.animal_id, observation: @production_detail.observation, production_id: @production_detail.production_id, type_id: @production_detail.type_id, weight: @production_detail.weight, weight_control: @production_detail.weight_control } }
    assert_redirected_to production_detail_url(@production_detail)
  end

  test "should destroy production_detail" do
    assert_difference('ProductionDetail.count', -1) do
      delete production_detail_url(@production_detail)
    end

    assert_redirected_to production_details_url
  end
end

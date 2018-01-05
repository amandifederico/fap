require 'test_helper'

class TransportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transport = transports(:one)
  end

  test "should get index" do
    get transports_url
    assert_response :success
  end

  test "should get new" do
    get new_transport_url
    assert_response :success
  end

  test "should create transport" do
    assert_difference('Transport.count') do
      post transports_url, params: { transport: { brand: @transport.brand, capacity: @transport.capacity, coupled: @transport.coupled, model: @transport.model, plate: @transport.plate, weight: @transport.weight } }
    end

    assert_redirected_to transport_url(Transport.last)
  end

  test "should show transport" do
    get transport_url(@transport)
    assert_response :success
  end

  test "should get edit" do
    get edit_transport_url(@transport)
    assert_response :success
  end

  test "should update transport" do
    patch transport_url(@transport), params: { transport: { brand: @transport.brand, capacity: @transport.capacity, coupled: @transport.coupled, model: @transport.model, plate: @transport.plate, weight: @transport.weight } }
    assert_redirected_to transport_url(@transport)
  end

  test "should destroy transport" do
    assert_difference('Transport.count', -1) do
      delete transport_url(@transport)
    end

    assert_redirected_to transports_url
  end
end

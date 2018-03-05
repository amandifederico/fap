require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get production_line" do
    get static_pages_production_line_url
    assert_response :success
  end

end

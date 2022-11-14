require "test_helper"

class QuadsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get quads_show_url
    assert_response :success
  end
end

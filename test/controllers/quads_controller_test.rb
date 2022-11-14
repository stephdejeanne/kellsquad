require "test_helper"

class QuadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quads_index_url
    assert_response :success
  end
end

require "test_helper"

class QuadsControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  test "should get index" do
    get quads_index_url
=======
  test "should get show" do
    get quads_show_url
>>>>>>> 83f6448ee3772bcf86c500488fa17d85ad7f7e9c
    assert_response :success
  end
end

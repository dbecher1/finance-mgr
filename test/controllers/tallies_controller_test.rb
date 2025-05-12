require "test_helper"

class TalliesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tallies_index_url
    assert_response :success
  end
end

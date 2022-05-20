require "test_helper"

class LeaderBoardControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get leader_board_show_url
    assert_response :success
  end
end

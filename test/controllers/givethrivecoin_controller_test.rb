require "test_helper"

class GivethrivecoinControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get givethrivecoin_show_url
    assert_response :success
  end
end

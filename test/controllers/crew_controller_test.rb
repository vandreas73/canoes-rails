require "test_helper"

class CrewControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get crew_list_url
    assert_response :success
  end
end

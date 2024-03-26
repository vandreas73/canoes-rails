require "test_helper"

class CompetitionsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get competitions_list_url
    assert_response :success
  end
end

require "test_helper"

class CanoesControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get canoes_list_url
    assert_response :success
  end
end

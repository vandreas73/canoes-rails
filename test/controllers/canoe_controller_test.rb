require "test_helper"

class CanoeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get canoe_new_url
    assert_response :success
  end

  test "should get edit" do
    get canoe_edit_url
    assert_response :success
  end

  test "should get del" do
    get canoe_del_url
    assert_response :success
  end
end

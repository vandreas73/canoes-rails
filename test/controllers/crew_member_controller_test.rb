require "test_helper"

class CrewMemberControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get crew_member_new_url
    assert_response :success
  end

  test "should get edit" do
    get crew_member_edit_url
    assert_response :success
  end

  test "should get del" do
    get crew_member_del_url
    assert_response :success
  end
end

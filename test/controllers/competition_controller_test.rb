require "test_helper"

class CompetitionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get competition_new_url
    assert_response :success
  end

  test "should get edit" do
    get competition_edit_url
    assert_response :success
  end

  test "should get del" do
    get competition_del_url
    assert_response :success
  end
end

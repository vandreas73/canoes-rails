require "test_helper"

class CrewControllerTest < ActionDispatch::IntegrationTest
  test "create crew member" do
    get new_crew_member_path(Canoe.last)
    assert_response :success

    post create_crew_member_path(Canoe.last), params: { crew_member: { name: 'András', age: 22}}
    assert_redirected_to crew_index_path(Canoe.last)
  end
end

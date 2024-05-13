require "test_helper"

class CreateCanoeAddCrewMemberTest < ActionDispatch::IntegrationTest
  test "create_canoe_add_crew_member" do
    get canoes_index_path
    assert_response :success 
    assert_select 'h2', 'Canoes'

    post create_canoe_path, params: { canoe: { name: 'Dinnye', max_crew: 4 } }
    assert_response :redirect
    follow_redirect!
    assert_select 'h2', 'Canoes'

    get edit_canoe_path(id: Canoe.last.id)
    assert_response :success
    
    put update_canoe_path(id: Canoe.last.id), params: { canoe: { name: 'Dinnye2', max_crew: 2 } }
    assert_response :redirect
    follow_redirect!
    assert_select 'h2', 'Canoes'

    get new_crew_member_path(Canoe.last)
    assert_response :success

    post create_crew_member_path(Canoe.last), params: { crew_member: { name: 'András', age: 22}}
    assert_redirected_to crew_index_path(Canoe.last)
  end
end

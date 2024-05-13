require "test_helper"

class CanoesControllerTest < ActionDispatch::IntegrationTest
  # test "should get list" do
  #   get canoes_list_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_canoe
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get canoes_edit_url
  #   assert_response :success
  # end

  # test "should get del" do
  #   get canoes_del_url
  #   assert_response :success
  # end

  test "canoe list" do
    get canoes_index_path
    assert_response :success
    assert_select 'h2', 'Canoes'
  end

  test "canoe new" do
    get new_canoe_path
    assert_response :success
    
    post create_canoe_path, params: { canoe: { name: 'Dinnye', max_crew: 4 } }
    assert_response :redirect
    follow_redirect!
    assert_select 'h2', 'Canoes'
  end

  test "canoe edit" do
    get edit_canoe_path(id: Canoe.first.id)
    assert_response :success
    
    put update_canoe_path(id: Canoe.first.id), params: { canoe: { name: 'Dinnye', max_crew: 4 } }
    assert_response :redirect
    follow_redirect!
    assert_select 'h2', 'Canoes'
  end

  test "canoe destroy" do
    assert_difference('Canoe.count', -1) do
      delete destroy_canoe_path(id: Canoe.first.id)
    end
    
    assert_redirected_to canoes_index_path
  end
end

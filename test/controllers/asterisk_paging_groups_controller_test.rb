require 'test_helper'

class AsteriskPagingGroupsControllerTest < ActionController::TestCase
  setup do
    @asterisk_paging_group = asterisk_paging_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asterisk_paging_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asterisk_paging_group" do
    assert_difference('AsteriskPagingGroup.count') do
      post :create, asterisk_paging_group: { members: @asterisk_paging_group.members, name: @asterisk_paging_group.name, paging_extension: @asterisk_paging_group.paging_extension }
    end

    assert_redirected_to asterisk_paging_group_path(assigns(:asterisk_paging_group))
  end

  test "should show asterisk_paging_group" do
    get :show, id: @asterisk_paging_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asterisk_paging_group
    assert_response :success
  end

  test "should update asterisk_paging_group" do
    patch :update, id: @asterisk_paging_group, asterisk_paging_group: { members: @asterisk_paging_group.members, name: @asterisk_paging_group.name, paging_extension: @asterisk_paging_group.paging_extension }
    assert_redirected_to asterisk_paging_group_path(assigns(:asterisk_paging_group))
  end

  test "should destroy asterisk_paging_group" do
    assert_difference('AsteriskPagingGroup.count', -1) do
      delete :destroy, id: @asterisk_paging_group
    end

    assert_redirected_to asterisk_paging_groups_path
  end
end

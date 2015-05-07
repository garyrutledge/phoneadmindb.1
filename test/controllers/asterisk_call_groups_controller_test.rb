require 'test_helper'

class AsteriskCallGroupsControllerTest < ActionController::TestCase
  setup do
    @asterisk_call_group = asterisk_call_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asterisk_call_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asterisk_call_group" do
    assert_difference('AsteriskCallGroup.count') do
      post :create, asterisk_call_group: { group: @asterisk_call_group.group, members: @asterisk_call_group.members }
    end

    assert_redirected_to asterisk_call_group_path(assigns(:asterisk_call_group))
  end

  test "should show asterisk_call_group" do
    get :show, id: @asterisk_call_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asterisk_call_group
    assert_response :success
  end

  test "should update asterisk_call_group" do
    patch :update, id: @asterisk_call_group, asterisk_call_group: { group: @asterisk_call_group.group, members: @asterisk_call_group.members }
    assert_redirected_to asterisk_call_group_path(assigns(:asterisk_call_group))
  end

  test "should destroy asterisk_call_group" do
    assert_difference('AsteriskCallGroup.count', -1) do
      delete :destroy, id: @asterisk_call_group
    end

    assert_redirected_to asterisk_call_groups_path
  end
end

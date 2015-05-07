require 'test_helper'

class AsteriskUsersControllerTest < ActionController::TestCase
  setup do
    @asterisk_user = asterisk_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asterisk_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asterisk_user" do
    assert_difference('AsteriskUser.count') do
      post :create, asterisk_user: { asterisk_call_group_id: @asterisk_user.asterisk_call_group_id, did: @asterisk_user.did, display_name: @asterisk_user.display_name, email: @asterisk_user.email, extension: @asterisk_user.extension, faxenabled: @asterisk_user.faxenabled, password: @asterisk_user.password, prefix: @asterisk_user.prefix, voicemail_enabled: @asterisk_user.voicemail_enabled, voicemail_password: @asterisk_user.voicemail_password }
    end

    assert_redirected_to asterisk_user_path(assigns(:asterisk_user))
  end

  test "should show asterisk_user" do
    get :show, id: @asterisk_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asterisk_user
    assert_response :success
  end

  test "should update asterisk_user" do
    patch :update, id: @asterisk_user, asterisk_user: { asterisk_call_group_id: @asterisk_user.asterisk_call_group_id, did: @asterisk_user.did, display_name: @asterisk_user.display_name, email: @asterisk_user.email, extension: @asterisk_user.extension, faxenabled: @asterisk_user.faxenabled, password: @asterisk_user.password, prefix: @asterisk_user.prefix, voicemail_enabled: @asterisk_user.voicemail_enabled, voicemail_password: @asterisk_user.voicemail_password }
    assert_redirected_to asterisk_user_path(assigns(:asterisk_user))
  end

  test "should destroy asterisk_user" do
    assert_difference('AsteriskUser.count', -1) do
      delete :destroy, id: @asterisk_user
    end

    assert_redirected_to asterisk_users_path
  end
end

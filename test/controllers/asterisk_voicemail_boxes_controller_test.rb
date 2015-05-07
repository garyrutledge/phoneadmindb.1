require 'test_helper'

class AsteriskVoicemailBoxesControllerTest < ActionController::TestCase
  setup do
    @asterisk_voicemail_box = asterisk_voicemail_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asterisk_voicemail_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asterisk_voicemail_box" do
    assert_difference('AsteriskVoicemailBox.count') do
      post :create, asterisk_voicemail_box: { asterisk_user_id: @asterisk_voicemail_box.asterisk_user_id, did: @asterisk_voicemail_box.did, display_name: @asterisk_voicemail_box.display_name, email: @asterisk_voicemail_box.email, extension: @asterisk_voicemail_box.extension, password: @asterisk_voicemail_box.password, prefix: @asterisk_voicemail_box.prefix }
    end

    assert_redirected_to asterisk_voicemail_box_path(assigns(:asterisk_voicemail_box))
  end

  test "should show asterisk_voicemail_box" do
    get :show, id: @asterisk_voicemail_box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asterisk_voicemail_box
    assert_response :success
  end

  test "should update asterisk_voicemail_box" do
    patch :update, id: @asterisk_voicemail_box, asterisk_voicemail_box: { asterisk_user_id: @asterisk_voicemail_box.asterisk_user_id, did: @asterisk_voicemail_box.did, display_name: @asterisk_voicemail_box.display_name, email: @asterisk_voicemail_box.email, extension: @asterisk_voicemail_box.extension, password: @asterisk_voicemail_box.password, prefix: @asterisk_voicemail_box.prefix }
    assert_redirected_to asterisk_voicemail_box_path(assigns(:asterisk_voicemail_box))
  end

  test "should destroy asterisk_voicemail_box" do
    assert_difference('AsteriskVoicemailBox.count', -1) do
      delete :destroy, id: @asterisk_voicemail_box
    end

    assert_redirected_to asterisk_voicemail_boxes_path
  end
end

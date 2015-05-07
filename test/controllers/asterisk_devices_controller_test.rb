require 'test_helper'

class AsteriskDevicesControllerTest < ActionController::TestCase
  setup do
    @asterisk_device = asterisk_devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asterisk_devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asterisk_device" do
    assert_difference('AsteriskDevice.count') do
      post :create, asterisk_device: { account_code: @asterisk_device.account_code, admin_password: @asterisk_device.admin_password, associated_user: @asterisk_device.associated_user, asterisk_user_id: @asterisk_device.asterisk_user_id, description: @asterisk_device.description, location: @asterisk_device.location, mac_address: @asterisk_device.mac_address, secret: @asterisk_device.secret }
    end

    assert_redirected_to asterisk_device_path(assigns(:asterisk_device))
  end

  test "should show asterisk_device" do
    get :show, id: @asterisk_device
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asterisk_device
    assert_response :success
  end

  test "should update asterisk_device" do
    patch :update, id: @asterisk_device, asterisk_device: { account_code: @asterisk_device.account_code, admin_password: @asterisk_device.admin_password, associated_user: @asterisk_device.associated_user, asterisk_user_id: @asterisk_device.asterisk_user_id, description: @asterisk_device.description, location: @asterisk_device.location, mac_address: @asterisk_device.mac_address, secret: @asterisk_device.secret }
    assert_redirected_to asterisk_device_path(assigns(:asterisk_device))
  end

  test "should destroy asterisk_device" do
    assert_difference('AsteriskDevice.count', -1) do
      delete :destroy, id: @asterisk_device
    end

    assert_redirected_to asterisk_devices_path
  end
end

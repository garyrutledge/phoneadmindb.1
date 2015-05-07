class AsteriskDevicesController < ApplicationController
  before_action :set_asterisk_device, only: [:show, :edit, :update, :destroy]

  # GET /asterisk_devices
  # GET /asterisk_devices.json
  def index
    @asterisk_devices = AsteriskDevice.all
  end

  # GET /asterisk_devices/1
  # GET /asterisk_devices/1.json
  def show
  end

  # GET /asterisk_devices/new
  def new
    @asterisk_device = AsteriskDevice.new
  end

  # GET /asterisk_devices/1/edit
  def edit
  end

  # POST /asterisk_devices
  # POST /asterisk_devices.json
  def create
    @asterisk_device = AsteriskDevice.new(asterisk_device_params)

    respond_to do |format|
      if @asterisk_device.save
        format.html { redirect_to @asterisk_device, notice: 'Asterisk device was successfully created.' }
        format.json { render :show, status: :created, location: @asterisk_device }
      else
        format.html { render :new }
        format.json { render json: @asterisk_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asterisk_devices/1
  # PATCH/PUT /asterisk_devices/1.json
  def update
    respond_to do |format|
      if @asterisk_device.update(asterisk_device_params)
        format.html { redirect_to @asterisk_device, notice: 'Asterisk device was successfully updated.' }
        format.json { render :show, status: :ok, location: @asterisk_device }
      else
        format.html { render :edit }
        format.json { render json: @asterisk_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asterisk_devices/1
  # DELETE /asterisk_devices/1.json
  def destroy
    @asterisk_device.destroy
    respond_to do |format|
      format.html { redirect_to asterisk_devices_url, notice: 'Asterisk device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asterisk_device
      @asterisk_device = AsteriskDevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asterisk_device_params
      params.require(:asterisk_device).permit(:description, :location, :secret, :asterisk_user_id, :admin_password, :mac_address, :account_code, :associated_user)
    end
end

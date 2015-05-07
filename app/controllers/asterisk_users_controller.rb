class AsteriskUsersController < ApplicationController
  before_action :set_asterisk_user, only: [:show, :edit, :update, :destroy]

  # GET /asterisk_users
  # GET /asterisk_users.json
  def index
    @asterisk_users = AsteriskUser.all
  end

  # GET /asterisk_users/1
  # GET /asterisk_users/1.json
  def show
  end

  # GET /asterisk_users/new
  def new
    @asterisk_user = AsteriskUser.new
  end

  # GET /asterisk_users/1/edit
  def edit
  end

  # POST /asterisk_users
  # POST /asterisk_users.json
  def create
    @asterisk_user = AsteriskUser.new(asterisk_user_params)

    respond_to do |format|
      if @asterisk_user.save
        format.html { redirect_to @asterisk_user, notice: 'Asterisk user was successfully created.' }
        format.json { render :show, status: :created, location: @asterisk_user }
      else
        format.html { render :new }
        format.json { render json: @asterisk_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asterisk_users/1
  # PATCH/PUT /asterisk_users/1.json
  def update
    respond_to do |format|
      if @asterisk_user.update(asterisk_user_params)
        format.html { redirect_to @asterisk_user, notice: 'Asterisk user was successfully updated.' }
        format.json { render :show, status: :ok, location: @asterisk_user }
      else
        format.html { render :edit }
        format.json { render json: @asterisk_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asterisk_users/1
  # DELETE /asterisk_users/1.json
  def destroy
    @asterisk_user.destroy
    respond_to do |format|
      format.html { redirect_to asterisk_users_url, notice: 'Asterisk user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asterisk_user
      @asterisk_user = AsteriskUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asterisk_user_params
      params.require(:asterisk_user).permit(:prefix, :extension, :did, :display_name, :password, :voicemail_enabled, :voicemail_password, :email, :faxenabled, :asterisk_call_group_id)
    end
end

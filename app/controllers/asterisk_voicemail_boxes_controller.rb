class AsteriskVoicemailBoxesController < ApplicationController
  before_action :set_asterisk_voicemail_box, only: [:show, :edit, :update, :destroy]

  # GET /asterisk_voicemail_boxes
  # GET /asterisk_voicemail_boxes.json
  def index
    @asterisk_voicemail_boxes = AsteriskVoicemailBox.all
  end

  # GET /asterisk_voicemail_boxes/1
  # GET /asterisk_voicemail_boxes/1.json
  def show
  end

  # GET /asterisk_voicemail_boxes/new
  def new
    @asterisk_voicemail_box = AsteriskVoicemailBox.new
  end

  # GET /asterisk_voicemail_boxes/1/edit
  def edit
  end

  # POST /asterisk_voicemail_boxes
  # POST /asterisk_voicemail_boxes.json
  def create
    @asterisk_voicemail_box = AsteriskVoicemailBox.new(asterisk_voicemail_box_params)

    respond_to do |format|
      if @asterisk_voicemail_box.save
        format.html { redirect_to @asterisk_voicemail_box, notice: 'Asterisk voicemail box was successfully created.' }
        format.json { render :show, status: :created, location: @asterisk_voicemail_box }
      else
        format.html { render :new }
        format.json { render json: @asterisk_voicemail_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asterisk_voicemail_boxes/1
  # PATCH/PUT /asterisk_voicemail_boxes/1.json
  def update
    respond_to do |format|
      if @asterisk_voicemail_box.update(asterisk_voicemail_box_params)
        format.html { redirect_to @asterisk_voicemail_box, notice: 'Asterisk voicemail box was successfully updated.' }
        format.json { render :show, status: :ok, location: @asterisk_voicemail_box }
      else
        format.html { render :edit }
        format.json { render json: @asterisk_voicemail_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asterisk_voicemail_boxes/1
  # DELETE /asterisk_voicemail_boxes/1.json
  def destroy
    @asterisk_voicemail_box.destroy
    respond_to do |format|
      format.html { redirect_to asterisk_voicemail_boxes_url, notice: 'Asterisk voicemail box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asterisk_voicemail_box
      @asterisk_voicemail_box = AsteriskVoicemailBox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asterisk_voicemail_box_params
      params.require(:asterisk_voicemail_box).permit(:prefix, :extension, :did, :display_name, :asterisk_user_id, :password, :email)
    end
end

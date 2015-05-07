class AsteriskCallGroupsController < ApplicationController
  before_action :set_asterisk_call_group, only: [:show, :edit, :update, :destroy]

  # GET /asterisk_call_groups
  # GET /asterisk_call_groups.json
  def index
    @asterisk_call_groups = AsteriskCallGroup.all
  end

  # GET /asterisk_call_groups/1
  # GET /asterisk_call_groups/1.json
  def show
  end

  # GET /asterisk_call_groups/new
  def new
    @asterisk_call_group = AsteriskCallGroup.new
  end

  # GET /asterisk_call_groups/1/edit
  def edit
  end

  # POST /asterisk_call_groups
  # POST /asterisk_call_groups.json
  def create
    @asterisk_call_group = AsteriskCallGroup.new(asterisk_call_group_params)

    respond_to do |format|
      if @asterisk_call_group.save
        format.html { redirect_to @asterisk_call_group, notice: 'Asterisk call group was successfully created.' }
        format.json { render :show, status: :created, location: @asterisk_call_group }
      else
        format.html { render :new }
        format.json { render json: @asterisk_call_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asterisk_call_groups/1
  # PATCH/PUT /asterisk_call_groups/1.json
  def update
    respond_to do |format|
      if @asterisk_call_group.update(asterisk_call_group_params)
        format.html { redirect_to @asterisk_call_group, notice: 'Asterisk call group was successfully updated.' }
        format.json { render :show, status: :ok, location: @asterisk_call_group }
      else
        format.html { render :edit }
        format.json { render json: @asterisk_call_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asterisk_call_groups/1
  # DELETE /asterisk_call_groups/1.json
  def destroy
    @asterisk_call_group.destroy
    respond_to do |format|
      format.html { redirect_to asterisk_call_groups_url, notice: 'Asterisk call group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asterisk_call_group
      @asterisk_call_group = AsteriskCallGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asterisk_call_group_params
      params.require(:asterisk_call_group).permit(:group, :members)
    end
end

class AsteriskPagingGroupsController < ApplicationController
  before_action :set_asterisk_paging_group, only: [:show, :edit, :update, :destroy]

  # GET /asterisk_paging_groups
  # GET /asterisk_paging_groups.json
  def index
    @asterisk_paging_groups = AsteriskPagingGroup.all
  end

  # GET /asterisk_paging_groups/1
  # GET /asterisk_paging_groups/1.json
  def show
  end

  # GET /asterisk_paging_groups/new
  def new
    @asterisk_paging_group = AsteriskPagingGroup.new
  end

  # GET /asterisk_paging_groups/1/edit
  def edit
  end

  # POST /asterisk_paging_groups
  # POST /asterisk_paging_groups.json
  def create
    @asterisk_paging_group = AsteriskPagingGroup.new(asterisk_paging_group_params)

    respond_to do |format|
      if @asterisk_paging_group.save
        format.html { redirect_to @asterisk_paging_group, notice: 'Asterisk paging group was successfully created.' }
        format.json { render :show, status: :created, location: @asterisk_paging_group }
      else
        format.html { render :new }
        format.json { render json: @asterisk_paging_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asterisk_paging_groups/1
  # PATCH/PUT /asterisk_paging_groups/1.json
  def update
    respond_to do |format|
      if @asterisk_paging_group.update(asterisk_paging_group_params)
        format.html { redirect_to @asterisk_paging_group, notice: 'Asterisk paging group was successfully updated.' }
        format.json { render :show, status: :ok, location: @asterisk_paging_group }
      else
        format.html { render :edit }
        format.json { render json: @asterisk_paging_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asterisk_paging_groups/1
  # DELETE /asterisk_paging_groups/1.json
  def destroy
    @asterisk_paging_group.destroy
    respond_to do |format|
      format.html { redirect_to asterisk_paging_groups_url, notice: 'Asterisk paging group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asterisk_paging_group
      @asterisk_paging_group = AsteriskPagingGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asterisk_paging_group_params
      params.require(:asterisk_paging_group).permit(:paging_extension, :name, :members)
    end
end

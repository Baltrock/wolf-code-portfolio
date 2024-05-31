class SiteUpdatesController < ApplicationController
  before_action :set_site_update, only: %i[ show edit update destroy ]

  # GET /site_updates or /site_updates.json
  def index
    @site_updates = SiteUpdate.all
  end

  # GET /site_updates/1 or /site_updates/1.json
  def show
  end

  # GET /site_updates/new
  def new
    @site_update = SiteUpdate.new
  end

  # GET /site_updates/1/edit
  def edit
  end

  # POST /site_updates or /site_updates.json
  def create
    @site_update = SiteUpdate.new(site_update_params)
    @site_update.admin = current_user

    respond_to do |format|
      if @site_update.save
        format.html { redirect_to site_update_url(@site_update), notice: "Site update was successfully created." }
        format.json { render :show, status: :created, location: @site_update }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @site_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_updates/1 or /site_updates/1.json
  def update
    respond_to do |format|
      if @site_update.update(site_update_params)
        format.html { redirect_to site_update_url(@site_update), notice: "Site update was successfully updated." }
        format.json { render :show, status: :ok, location: @site_update }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @site_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_updates/1 or /site_updates/1.json
  def destroy
    @site_update.destroy

    respond_to do |format|
      format.html { redirect_to site_updates_url, notice: "Site update was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_update
      @site_update = SiteUpdate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def site_update_params
      params.require(:site_update).permit(:update_title, :update_description, :update_schedule, :admin_id)
    end
end

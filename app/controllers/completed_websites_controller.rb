class CompletedWebsitesController < ApplicationController
  before_action :set_completed_website, only: %i[ show edit update destroy ]

  # GET /completed_websites or /completed_websites.json
  def index
    @completed_websites = CompletedWebsite.all
  end

  # GET /completed_websites/1 or /completed_websites/1.json
  def show
  end

  # GET /completed_websites/new
  def new
    @completed_website = CompletedWebsite.new
  end

  # GET /completed_websites/1/edit
  def edit
  end

  # POST /completed_websites or /completed_websites.json
  def create
    @completed_website = CompletedWebsite.new(completed_website_params)
    @completed_website.admin = current_user

    respond_to do |format|
      if @completed_website.save
        format.html { redirect_to completed_website_url(@completed_website), notice: "Completed website was successfully created." }
        format.json { render :show, status: :created, location: @completed_website }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @completed_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /completed_websites/1 or /completed_websites/1.json
  def update
    respond_to do |format|
      if @completed_website.update(completed_website_params)
        format.html { redirect_to completed_website_url(@completed_website), notice: "Completed website was successfully updated." }
        format.json { render :show, status: :ok, location: @completed_website }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @completed_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /completed_websites/1 or /completed_websites/1.json
  def destroy
    @completed_website.destroy

    respond_to do |format|
      format.html { redirect_to completed_websites_url, notice: "Completed website was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_completed_website
      @completed_website = CompletedWebsite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def completed_website_params
      params.require(:completed_website).permit(:website_name, :website_description, :completion_period, :admin_id)
    end
end

class WebsiteRequestsController < ApplicationController
  before_action :set_website_request, only: %i[ show edit update destroy ]

  # GET /website_requests or /website_requests.json
  def index
    @website_requests = WebsiteRequest.all
  end

  # GET /website_requests/1 or /website_requests/1.json
  def show
  end

  # GET /website_requests/new
  def new
    @website_request = WebsiteRequest.new
  end

  # GET /website_requests/1/edit
  def edit
  end

  # POST /website_requests or /website_requests.json
  def create
    @website_request = WebsiteRequest.new(website_request_params)
    @website_request.user = current_user

    respond_to do |format|
      if @website_request.save
        format.html { redirect_to website_request_url(@website_request), notice: "Website request was successfully created." }
        format.json { render :show, status: :created, location: @website_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @website_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website_requests/1 or /website_requests/1.json
  def update
    respond_to do |format|
      if @website_request.update(website_request_params)
        format.html { redirect_to website_request_url(@website_request), notice: "Website request was successfully updated." }
        format.json { render :show, status: :ok, location: @website_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @website_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website_requests/1 or /website_requests/1.json
  def destroy
    @website_request.destroy

    respond_to do |format|
      format.html { redirect_to website_requests_url, notice: "Website request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website_request
      @website_request = WebsiteRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def website_request_params
      params.require(:website_request).permit(:website_name, :why_website, :website_description, :deadline, :user_id)
    end
end

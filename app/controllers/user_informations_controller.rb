class UserInformationsController < ApplicationController
  before_action :set_user_information, only: %i[ show edit update destroy ]

  # GET /user_informations or /user_informations.json

  def index
    @user_informations = UserInformation.all
  end

  # GET /user_informations/1 or /user_informations/1.json
  def show
  end

  # GET /user_informations/new
  def new
    @user_information = UserInformation.new
  end

  # GET /user_informations/1/edit
  def edit
  end

  # POST /user_informations or /user_informations.json
  def create
    @user_information = UserInformation.new(user_information_params)
    @user_information.user = current_user

    respond_to do |format|
      if @user_information.save
        format.html { redirect_to user_information_url(@user_information), notice: "User information was successfully created." }
        format.json { render :show, status: :created, location: @user_information }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_informations/1 or /user_informations/1.json
  def update
    respond_to do |format|
      if @user_information.update(user_information_params)
        format.html { redirect_to user_information_url(@user_information), notice: "User information was successfully updated." }
        format.json { render :show, status: :ok, location: @user_information }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_informations/1 or /user_informations/1.json
  def destroy
    @user_information.destroy

    respond_to do |format|
      format.html { redirect_to user_informations_url, notice: "User information was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_information
      @user_information = UserInformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_information_params
      params.require(:user_information).permit(:name, :email, :bio, :user_id)
    end
end

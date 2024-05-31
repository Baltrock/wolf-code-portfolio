class UsersController < ApplicationController
  before_action :set_information_form, only: %i[ show edit update destroy ]

  # GET /information_forms or /information_forms.json
  def primary
    @user = User.all
    @website_requests = WebsiteRequest.all
    @user_informations = UserInformation.all
  end

  # GET /user/1 or /user/1.json
  def show
    # @fuel_needed = @fuel_needed
    # @name = @name
    # @user = current_user
    @website_request.all
    @user = User.find(params[:id])
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @user }
      end
      info = JSON.parse(url_s)
      @infos = info["value"]
    render json: @current_user
  end

  def user
  end

  # GET /user/new
  def new
    @user = User.new
  end

  # GET /user/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    render json:user, status: :created

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "Welcome to the BOS." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "Your account has been updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to user_url, notice: "user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name)
      params.permit(:username, :password, :password_confirmation)
    end
end

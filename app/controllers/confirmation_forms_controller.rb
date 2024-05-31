class ConfirmationFormsController < ApplicationController
  before_action :set_confirmation_form, only: %i[ show edit update destroy ]

  # GET /confirmation_forms or /confirmation_forms.json
  def index
    @confirmation_forms = ConfirmationForm.all
  end

  # GET /confirmation_forms/1 or /confirmation_forms/1.json
  def show
  end

  # GET /confirmation_forms/new
  def new
    @confirmation_form = ConfirmationForm.new
  end

  # GET /confirmation_forms/1/edit
  def edit
  end

  # POST /confirmation_forms or /confirmation_forms.json
  def create
    @confirmation_form = ConfirmationForm.new(confirmation_form_params)
    @confirmation_form.admin = current_admin

    respond_to do |format|
      if @confirmation_form.save
        format.html { redirect_to confirmation_form_url(@confirmation_form), notice: "Confirmation form was successfully created." }
        format.json { render :show, status: :created, location: @confirmation_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @confirmation_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confirmation_forms/1 or /confirmation_forms/1.json
  def update
    respond_to do |format|
      if @confirmation_form.update(confirmation_form_params)
        format.html { redirect_to confirmation_form_url(@confirmation_form), notice: "Confirmation form was successfully updated." }
        format.json { render :show, status: :ok, location: @confirmation_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @confirmation_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confirmation_forms/1 or /confirmation_forms/1.json
  def destroy
    @confirmation_form.destroy

    respond_to do |format|
      format.html { redirect_to confirmation_forms_url, notice: "Confirmation form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confirmation_form
      @confirmation_form = ConfirmationForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def confirmation_form_params
      params.require(:confirmation_form).permit(:project_assignment, :website_assessment, :overall_comment, :deadline_possibility, :price_offer, :admin_id)
    end
end

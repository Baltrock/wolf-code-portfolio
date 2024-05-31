class ComplaintFormsController < ApplicationController
  before_action :set_complaint_form, only: %i[ show edit update destroy ]

  # GET /complaint_forms or /complaint_forms.json
  def index
    @complaint_forms = ComplaintForm.all
  end

  # GET /complaint_forms/1 or /complaint_forms/1.json
  def show
  end

  # GET /complaint_forms/new
  def new
    @complaint_form = ComplaintForm.new
  end

  # GET /complaint_forms/1/edit
  def edit
  end

  # POST /complaint_forms or /complaint_forms.json
  def create
    @complaint_form = ComplaintForm.new(complaint_form_params)
    @complaint_form.user = current_user

    respond_to do |format|
      if @complaint_form.save
        format.html { redirect_to complaint_form_url(@complaint_form), notice: "Complaint form was successfully created." }
        format.json { render :show, status: :created, location: @complaint_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @complaint_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complaint_forms/1 or /complaint_forms/1.json
  def update
    respond_to do |format|
      if @complaint_form.update(complaint_form_params)
        format.html { redirect_to complaint_form_url(@complaint_form), notice: "Complaint form was successfully updated." }
        format.json { render :show, status: :ok, location: @complaint_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @complaint_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaint_forms/1 or /complaint_forms/1.json
  def destroy
    @complaint_form.destroy

    respond_to do |format|
      format.html { redirect_to complaint_forms_url, notice: "Complaint form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint_form
      @complaint_form = ComplaintForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complaint_form_params
      params.require(:complaint_form).permit(:complaint_title, :complaint_description, :time_of_event, :user_id)
    end
end

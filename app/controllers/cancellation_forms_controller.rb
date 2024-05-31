class CancellationFormsController < ApplicationController
  before_action :set_cancellation_form, only: %i[ show edit update destroy ]

  # GET /cancellation_forms or /cancellation_forms.json
  def index
    @cancellation_forms = CancellationForm.all
  end

  # GET /cancellation_forms/1 or /cancellation_forms/1.json
  def show
  end

  # GET /cancellation_forms/new
  def new
    @cancellation_form = CancellationForm.new
  end

  # GET /cancellation_forms/1/edit
  def edit
  end

  # POST /cancellation_forms or /cancellation_forms.json
  def create
    @cancellation_form = CancellationForm.new(cancellation_form_params)
    @cancellation_form.user = current_user

    respond_to do |format|
      if @cancellation_form.save
        format.html { redirect_to cancellation_form_url(@cancellation_form), notice: "Cancellation form was successfully created." }
        format.json { render :show, status: :created, location: @cancellation_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cancellation_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cancellation_forms/1 or /cancellation_forms/1.json
  def update
    respond_to do |format|
      if @cancellation_form.update(cancellation_form_params)
        format.html { redirect_to cancellation_form_url(@cancellation_form), notice: "Cancellation form was successfully updated." }
        format.json { render :show, status: :ok, location: @cancellation_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cancellation_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cancellation_forms/1 or /cancellation_forms/1.json
  def destroy
    @cancellation_form.destroy

    respond_to do |format|
      format.html { redirect_to cancellation_forms_url, notice: "Cancellation form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancellation_form
      @cancellation_form = CancellationForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cancellation_form_params
      params.require(:cancellation_form).permit(:reason_for_cancellation, :user_id)
    end
end

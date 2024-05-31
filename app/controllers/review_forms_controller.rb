class ReviewFormsController < ApplicationController
  before_action :set_review_form, only: %i[ show edit update destroy ]

  # GET /review_forms or /review_forms.json
  def index
    @review_forms = ReviewForm.all
  end

  # GET /review_forms/1 or /review_forms/1.json
  def show
  end

  # GET /review_forms/new
  def new
    @review_form = ReviewForm.new
  end

  # GET /review_forms/1/edit
  def edit
  end

  # POST /review_forms or /review_forms.json
  def create
    @review_form = ReviewForm.new(review_form_params)
    @review_form.user = current_user

    respond_to do |format|
      if @review_form.save
        format.html { redirect_to review_form_url(@review_form), notice: "Review form was successfully created." }
        format.json { render :show, status: :created, location: @review_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_forms/1 or /review_forms/1.json
  def update
    respond_to do |format|
      if @review_form.update(review_form_params)
        format.html { redirect_to review_form_url(@review_form), notice: "Review form was successfully updated." }
        format.json { render :show, status: :ok, location: @review_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_forms/1 or /review_forms/1.json
  def destroy
    @review_form.destroy

    respond_to do |format|
      format.html { redirect_to review_forms_url, notice: "Review form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_form
      @review_form = ReviewForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_form_params
      params.require(:review_form).permit(:review_title, :review, :rating, :user_id)
    end
end

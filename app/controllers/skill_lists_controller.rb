class SkillListsController < ApplicationController
  before_action :set_skill_list, only: %i[ show edit update destroy ]

  # GET /skill_lists or /skill_lists.json
  def index
    @skill_lists = SkillList.all
  end

  # GET /skill_lists/1 or /skill_lists/1.json
  def show
  end

  # GET /skill_lists/new
  def new
    @skill_list = SkillList.new
  end

  # GET /skill_lists/1/edit
  def edit
  end

  # POST /skill_lists or /skill_lists.json
  def create
    @skill_list = SkillList.new(skill_list_params)
    @skill_list.admin = current_user

    respond_to do |format|
      if @skill_list.save
        format.html { redirect_to skill_list_url(@skill_list), notice: "Skill list was successfully created." }
        format.json { render :show, status: :created, location: @skill_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @skill_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_lists/1 or /skill_lists/1.json
  def update
    respond_to do |format|
      if @skill_list.update(skill_list_params)
        format.html { redirect_to skill_list_url(@skill_list), notice: "Skill list was successfully updated." }
        format.json { render :show, status: :ok, location: @skill_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skill_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_lists/1 or /skill_lists/1.json
  def destroy
    @skill_list.destroy

    respond_to do |format|
      format.html { redirect_to skill_lists_url, notice: "Skill list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_list
      @skill_list = SkillList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skill_list_params
      params.require(:skill_list).permit(:skill, :admin_id)
    end
end

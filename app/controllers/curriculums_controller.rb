class CurriculumsController < ApplicationController
  before_action :set_curriculum, only: %i[show edit update destroy]

  # GET /curriculums or /curriculums.json
  def index
    @curriculums = @current_team.curriculums.all
  end

  # GET /curriculums/1 or /curriculums/1.json
  def show
  end

  # GET /curriculums/new
  def new
    @curriculum = @current_team.curriculums.new
  end

  # GET /curriculums/1/edit
  def edit
  end

  # POST /curriculums or /curriculums.json
  def create
    @curriculum = @current_team.curriculums.new(curriculum_params)

    respond_to do |format|
      if @curriculum.save
        format.html do
          redirect_to team_curriculum_url(@current_team, @curriculum),
                      notice: "Curriculum was successfully created."
        end
        format.json { render :show, status: :created, location: @curriculum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @curriculum.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /curriculums/1 or /curriculums/1.json
  def update
    respond_to do |format|
      if @curriculum.update(curriculum_params)
        format.html do
          redirect_to team_curriculum_url(@current_team, @curriculum),
                      notice: "Curriculum was successfully updated."
        end
        format.json { render :show, status: :ok, location: @curriculum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @curriculum.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /curriculums/1 or /curriculums/1.json
  def destroy
    @curriculum.destroy

    respond_to do |format|
      format.html do
        redirect_to team_curriculums_url(@current_team),
                    notice: "Curriculum was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_curriculum
    @curriculum = Curriculum.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def curriculum_params
    params.require(:curriculum).permit(
      :name,
      :short_name,
      :description,
      :team_id,
    )
  end
end

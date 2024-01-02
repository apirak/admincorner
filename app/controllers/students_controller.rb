class StudentsController < AuthorizedController
  before_action :set_student, only: %i[show edit update destroy]

  # GET /students or /students.json
  def index
    @students = @current_team.students.all
  end

  # GET /students/1 or /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = @current_team.students.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students or /students.json
  def create
    @student = @current_team.students.build(student_params)

    respond_to do |format|
      if @student.save
        format.html do
          redirect_to team_student_url(@current_team, @student),
                      notice: "Student was successfully created."
        end
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @student.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /students/1 or /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html do
          redirect_to team_student_url(@current_team, @student),
                      notice: "Student was successfully updated."
        end
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @student.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /students/1 or /students/1.json
  def destroy
    @student.destroy

    respond_to do |format|
      format.html do
        redirect_to team_students_url(@current_team),
                    notice: "Student was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = @current_team.students.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def student_params
    params.require(:student).permit(
      :title_name,
      :first_name,
      :last_name,
      :nickname,
      :nickname_en,
      :date_of_birth,
      :gender,
      :current_school,
      :address,
      :phone_number,
      :email,
      :medication_allergies,
      :chronic_conditions,
      :emergency_contact_name,
      :emergency_contact_relationship,
      :emergency_contact_number,
      :parent_name,
      :parent_contact,
      :notes,
      :team_id,
      :picture,
    )
  end
end

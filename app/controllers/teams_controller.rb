class TeamsController < AuthorizedController
  before_action :set_team, only: %i[show edit update destroy]
  before_action :authorize_member, only: %i[show edit update destroy]

  # GET /teams or /teams.json
  def index
    @teams = current_user.teams
  end

  # GET /teams/1 or /teams/1.json
  def show
    @current_team = @team
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams or /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        @team.members.create(user: current_user, roles: { admin: true })
        format.html do
          redirect_to team_url(@team), notice: "Team was successfully created."
        end
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1 or /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html do
          redirect_to team_url(@team), notice: "Team was successfully updated."
        end
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1 or /teams/1.json
  def destroy
    @team.destroy

    respond_to do |format|
      format.html do
        redirect_to teams_url, notice: "Team was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  def authorize_member
    return if @team.users.include? current_user

    redirect_to root_path, alert: "You are not a member"
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_team
    @team = Team.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def team_params
    params.require(:team).permit(:name)
  end
end

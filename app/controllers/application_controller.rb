class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_current_team

  def after_sign_in_path_for(resource)
    dashboard_path # replace with your actual dashboard path
  end

  private

  def set_current_team
    logger.debug "params: #{params}"
    @current_team = Team.find(params[:team_id]) if params[:team_id]
    logger.debug "Current team1: #{@current_team}"
    @current_team = current_user.teams.first unless @current_team
    logger.debug "Current team2: #{@current_team}"
  end
end

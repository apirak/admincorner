class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_current_team
  def after_sign_in_path_for(resource)
    dashboard_path # replace with your actual dashboard path
  end

  private

  def set_current_team
    unless devise_controller? && %i[new create].include?(action_name)
      if params[:team_id]
        @current_team = Team.find(params[:team_id])
      elsif user_signed_in?
        @current_team ||= current_user.teams.take
      end
    end
  end
end

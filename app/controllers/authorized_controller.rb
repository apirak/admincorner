class AuthorizedController < ApplicationController
  before_action :set_current_team
  before_action :authorize_member

  private

  def set_current_team
    @current_team = Team.find(params[:team_id])
  end

  def authorize_member
    return if @current_team.users.include? current_user

    redirect_to root_path, alert: "You are not a member"
  end
end

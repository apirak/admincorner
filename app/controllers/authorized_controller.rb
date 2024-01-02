class AuthorizedController < ApplicationController
  before_action :authorize_member

  private

  def authorize_member
    return if @current_team.users.include? current_user
    redirect_to root_path, alert: "You are not a member"
  end
end

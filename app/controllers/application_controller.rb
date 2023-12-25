class ApplicationController < ActionController::Base
  # set_current_tenant_by_subdomain_or_domain(:team, :subdomain, :domain)

  # set_current_tenant_through_filter
  # before_action :set_current_tenant_by_current_user_first_team
  before_action :authenticate_user!

  # def set_current_tenant_by_current_user_first_team
  #   if current_user
  #     current_team = current_user.members.first.team
  #     set_current_tenant(current_team)
  #   end
  # end

  def after_sign_in_path_for(resource)
    dashboard_path # replace with your actual dashboard path
  end
end

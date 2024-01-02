class PagesController < AuthorizedController
  skip_before_action :authenticate_user!, only: :landing_page

  def dashboard
    # @team = ActsAsTenant.current_tenant.name
  end

  def landing_page
  end
end

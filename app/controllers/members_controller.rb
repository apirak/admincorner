class MembersController < AuthorizedController
  def index
    @members = @current_team.members
  end

  def invite
    email = params[:email]
    return redirect_with_alert("No email provided") if email.blank?

    user = find_or_invite_user(email)
    return redirect_with_alert("Email invalid") unless user.valid?

    # TODO: Email that user has been added to this team

    add_user_to_team(user)
    redirect_to team_members_path(@current_team), notice: "#{email} invited!"
  end

  private

  def redirect_with_alert(message)
    redirect_to team_members_path(@current_team), alert: message
  end

  def find_or_invite_user(email)
    User.find_by(email: email) || User.invite!({ email: email }, current_user)
  end

  def add_user_to_team(user)
    user.members.find_or_create_by(
      team: @current_team,
      roles: {
        admin: false,
        editor: true,
      },
    )
  end
end

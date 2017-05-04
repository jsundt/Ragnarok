class Components::ProfileCard

  attr_reader :team_member

  def initialize(team_member)
    @team_member = team_member
  end

  def avatar
    team_member.avatar
  end

  def name
    team_member.name
  end

  def role
    team_member.role
  end

  def role_and_team
    return role unless team_member.team
    "#{team_member.role} – #{team_member.team}"
  end

  def badges
    team_member.badges
  end

end

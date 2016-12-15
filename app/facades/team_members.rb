class TeamMembers

  def initialize()
  end

  def members
    [
      {
        name: 'Fluffy McDoom',
        role: 'Lead Rocket Surgeon',
        avatar: 'http://placekitten.com/150/200',
        badges: '',
      },
      {
        name: 'Colors',
        role: 'String theorist',
        avatar: 'http://placekitten.com/150/150',
        badges: '',
      },
    ]
  end


  private

  def view_path
    Rails.application.routes.url_helpers
  end

end

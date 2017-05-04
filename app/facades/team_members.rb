class TeamMembers

  def initialize()
  end

  def members
    [
      {
        name: 'Fluffy McDoom',
        role: 'Lead bird watcher',
        avatar: 'http://placekitten.com/150/200',
        badges: '😹 🦆',
      },
      {
        name: 'Colors',
        role: 'String theorist',
        team: 'Brainicats',
        avatar: 'http://placekitten.com/150/150',
        badges: '',
      },
    ]
  end

  def profile_cards
    members.map { |tm| Components::ProfileCard.new( OpenStruct.new(tm) ) }
  end


  private

  def view_path
    Rails.application.routes.url_helpers
  end

end

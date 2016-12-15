class TeamMembers

  def initialize()
  end

  def members
    [
      {
        name: 'Home',
        role: '',
        image: '',
        badges: '',
        path: view_path.home_path,
      },
      {
        name: 'Colors',
        role: '',
        image: '',
        badges: '',
        path: view_path.root_path,
      },
    ]
  end


  private

  def view_path
    Rails.application.routes.url_helpers
  end

end

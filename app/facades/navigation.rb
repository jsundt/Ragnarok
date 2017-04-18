class Navigation

  def initialize()
  end

  def main_navigation
    [
      {
        name: 'Home',
        path: view_path.home_path,
        disabled: false,
      },
      {
        name: 'Colors',
        path: view_path.root_path,
        disabled: true,
      },
      {
        name: 'Typography',
        path: view_path.typography_path,
        disabled: false,
      },
      {
        name: 'Media',
        path: view_path.root_path,
        disabled: true,
      },
      {
        name: 'Objects',
        path: view_path.objects_path,
        disabled: false,
      },
      {
        name: 'Blocks',
        path: view_path.blocks_path,
        disabled: false,
      },
      {
        name: 'Internal Plugins',
        path: view_path.root_path,
        disabled: true,
      },
      {
        name: 'External Plugins',
        path: view_path.root_path,
        disabled: true,
      },
    ]
  end


  private

  def view_path
    Rails.application.routes.url_helpers
  end

end

class WelcomeController < ApplicationController
  def index
  end

  def typography
    render file: 'typography/index'
  end

  def objects
    @team_members = TeamMembers.new().members
    @buttons = ObjectVariants::Buttons.new()

    render file: 'objects/index'
  end

  def blocks
    render file: 'blocks/company_profile'
  end
end

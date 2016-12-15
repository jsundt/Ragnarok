class WelcomeController < ApplicationController
  def index
  end

  def typography
    render file: 'typography/index'
  end

  def objects
    @team_members = TeamMembers.new().members
    render file: 'objects/index'
  end
end

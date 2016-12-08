class WelcomeController < ApplicationController
  def index
  end

  def typography
    render file: 'typography/index'
  end
end

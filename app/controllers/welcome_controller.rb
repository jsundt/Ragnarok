class WelcomeController < ApplicationController
  def index
  end

  def typography
    render file: 'typography/index'
  end

  def objects
    render file: 'objects/index'
  end
end

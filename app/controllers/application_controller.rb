class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_navigation

  private

  def set_navigation
    @navigation = Navigation.new().main_navigation
  end
end

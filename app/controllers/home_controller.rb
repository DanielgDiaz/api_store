class HomeController < ApplicationController
  def grettings
    render json: { grettings: I18.t(:hello) }
  end
end

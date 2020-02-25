# frozen_string_literal: true

class BuildingsController < ApplicationController
  def initialize
    @buildings_service = Buildings.new
  end

  helper_method :redirect_to_login
  def redirect_to_login
    redirect_to '/users/sign_in'
  end

  helper_method :load_buildings
  def load_buildings(page = 1)
    @buildings_service.load_page(page)
  end
end

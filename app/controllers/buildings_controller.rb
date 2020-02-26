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
  def load_buildings
    @buildings_service.load_page(params[:page])
  end

  helper_method :current_page
  def current_page
    @buildings_service.current_page
  end

  helper_method :total_pages
  def total_pages
    @buildings_service.total_pages
  end
end

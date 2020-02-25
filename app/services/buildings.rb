# frozen_string_literal: true

class Buildings
  attr_reader :total_pages, :atual_page, :buildings

  def initialize
    api_connection = ApiConnection.new
    response_buildings = api_connection.response_buildings

    @buildings ||= response_buildings["buildings"]
    @atual_page ||= response_buildings["page"]
    @total_pages ||= response_buildings["total_pages"]
  end

  def load_page(page = 1)
    return @buildings if atual_page == page

    api_connection = ApiConnection.new
    response_buildings = api_connection.response_buildings(page)

    @atual_page = response_buildings["page"]
    @buildings = response_buildings["buildings"]
  end
end

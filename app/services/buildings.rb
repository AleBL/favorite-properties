# frozen_string_literal: true

class Buildings
  attr_reader :total_pages, :current_page, :buildings

  def initialize
    load_page
  end

  def load_page(page = 1)
    begin
      page = page.to_i if page.class == String

      page = 1 if page <= 0 || page > @total_pages
    rescue Exception => e
      page = 1
      puts e
    end

    return @buildings if @current_page == page

    response_buildings = ApiConnection.response_buildings(page)

    @total_pages = response_buildings['total_pages']
    @current_page = response_buildings['page']
    @buildings = response_buildings['buildings']
  end
end

# frozen_string_literal: true

require 'httparty'

class ApiConnection
  include HTTParty

  def self.response_buildings(page = 1)
    bearer_token = "<ADD BEARER TOKEN HERE>"

    HTTParty.get(
      "https://www.orulo.com.br/api/v2/buildings", 
      headers: {
        "Authorization" => "Bearer #{bearer_token}",
        "Accept" => "application/json"
      },
      query: {
        page: page
      }
    )
  end
end

class SearchController < ApplicationController 

  def index
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/search?") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['FOODDATA_CENTRAL_API_KEY']
      faraday.params = {"generalSearchInput": params["q"]}
    end
    @foods = JSON.parse(response.body, symbolize_names: true)[:foods]
  end

end
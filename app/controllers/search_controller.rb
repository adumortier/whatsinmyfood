class SearchController < ApplicationController 

  def index
    require 'pry'; binding.pry
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/search?api_key=#{ENV['FOODDATA_CENTRAL_API_KEY']}&generalSearchInput=sweet%20potatoes") 
    @foods = JSON.parse(response.body, symbolize_names: true)[:foods]
  end

end
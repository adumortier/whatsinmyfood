class SearchController < ApplicationController 

  def index        
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/search?api_key=#{ENV['FOODDATA_CENTRAL_API_KEY']}&generalSearchInput=Cheddar%20Cheese")
    
  end

end
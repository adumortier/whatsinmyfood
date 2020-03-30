class SearchController < ApplicationController 

  def index
    render locals: {search_result: FoodSearch.new(params["q"])}
  end

end
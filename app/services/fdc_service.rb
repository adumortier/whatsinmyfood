class FdcService

  def list_foods(food)
    response = get_response({"generalSearchInput": food})
    return JSON.parse(response.body, symbolize_names: true)[:foods]
  end

  private

  def get_response(search_params)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/search?") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['FOODDATA_CENTRAL_API_KEY']
      faraday.params = search_params
    end
    return response
  end

end
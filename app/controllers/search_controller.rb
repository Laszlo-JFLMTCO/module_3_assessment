class SearchController < ApplicationController
  def index
    response_raw = Faraday.get "https://api.bestbuy.com/v1/stores((area(#{params["searchbox"]},25)))?apiKey=#{ENV['SEARCH_API_KEY']}&format=json"
    response = JSON.parse(response_raw.body)
    @total_stores = response["total"]
    # @stores = response["stores"].map do |store_raw|
    #   Store.new(store_raw)
    # end
    # binding.pry
# response = get "https://api.bestbuy.com/v1/stores((area(80202,25)))?apiKey=ENV['SEARCH_API_KEY']&format=json"
puts "hello"
  end
end
class SearchController < ApplicationController
  def index
    binding.pry
    response = Faraday.get "https://api.bestbuy.com/v1/stores((area(#{params["searchbox"]},25)))?apiKey=#{ENV['SEARCH_API_KEY']}&format=json"
# response = get "https://api.bestbuy.com/v1/stores((area(80202,25)))?apiKey=ENV['SEARCH_API_KEY']&format=json"
puts "hello"
  end
end
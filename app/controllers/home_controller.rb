class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

     @url ='https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=100&CMC_PRO_API_KEY=7a4ab5c2-4784-4dd4-82f4-0aff98218ecd'
     @uri = URI(@url)
     @response = Net::HTTP.get(@uri)
     @coins = JSON.parse(@response)
     @my_coins = ["BTC",]
  end

  def about
  end

end


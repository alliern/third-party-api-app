class Api::MarvelController < ApplicationController
  def index
    response = HTTP.get("https://gateway.marvel.com:443/v1/public/characters?name=hulk&apikey=#{Rails.application.credentials.marvel_api[:api_key]}")
    render json: response.parse
  end
end



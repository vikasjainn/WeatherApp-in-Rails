class WeatherController < ApplicationController
    def show
      city = params[:city]
      render json: fetch_weather(city)
    end
  
    private
  
    def fetch_weather(city)
      # Implement logic to make API call and parse the response
      # You can use the 'httparty' gem or 'net/http' library for HTTP requests
      # For example, using HTTParty:
      response = HTTParty.get("https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/india?unitGroup=metric&key=SLTM3EYKQHY2FY4CE266ZDMPX&contentType=json")
      JSON.parse(response.body)
    end
  end
  
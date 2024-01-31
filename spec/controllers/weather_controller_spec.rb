require 'rails_helper'

RSpec.describe WeatherController, type: :controller do
  describe 'GET #show' do
    it 'returns successful response' do
      get :show, params: { city: 'London' }
      expect(response).to have_http_status(:success)
    end

    it 'returns JSON format' do
      get :show, params: { city: 'London' }
      expect(response.content_type).to eq('application/json; charset=utf-8')
    end

    it 'calls fetch_weather method' do
      expect_any_instance_of(WeatherController).to receive(:fetch_weather).with('London').and_return({})
      get :show, params: { city: 'London' }
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('Home', type: :request) do
  describe 'GET /index' do
    it 'returns a succesful response' do
      get root_path
      expect(response).to be_successful
    end 

    it 'include the correct text' do
      get root_path
      expect(response.body).to include('Kuira')
    end
  end
end

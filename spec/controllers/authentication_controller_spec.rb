# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::AuthenticationController, type: :controller do
  describe 'GET login' do
    before do
      get :login
    end
    it 'returns a successful response' do
      expect(json_response).to eq({})
    end
  end
end

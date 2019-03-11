# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::AuthenticationController, type: :controller do
    describe 'POST login for technician' do
        let(:login_technician) {FactoryBot.create(:technician)}
        let(:params) do
            {
                name: Faker::Name.name,
                password_digest: Faker::String.random(8)
            }
        end
        before do
            post :login_technician, params: params
        end
        it 'returns a successful response' do
            expect(json[:username]).to eq(params[:username])
            expect(json[:password_digest]).to eq(params[:password_digest])
        end
    end

    describe 'POST login for dispatch' do
        let(:login_dispatch) {FactoryBot.create(:dispatch)}
        let(:params) do
            {
                name: Faker::Name.name,
                password_digest: Faker::String.random(8)
            }
        end
        before do
            post :login_dispatch, params: params
        end
        it 'returns a successful response' do
            expect(json[:username]).to eq(params[:username])
            expect(json[:password_digest]).to eq(params[:password_digest])
        end
    end
end

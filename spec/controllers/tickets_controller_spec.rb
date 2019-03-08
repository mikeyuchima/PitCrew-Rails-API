# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::TicketsController, type: :controller do
  describe 'GET tickets' do
    let!(:dispatch) { FactoryBot.create(:dispatch) }
    let!(:ride) { FactoryBot.create(:ride, dispatch: dispatch) }
    let!(:technician) { FactoryBot.create(:technician, ride: ride) }
    let!(:ticket) { FactoryBot.create(:ticket, ride: ride, technician: technician) }

    before do
      FactoryBot.create_list(:ticket, 10, ride: ride, technician: technician)

      get :index
    end

    context 'given valid params' do
      it 'returns successful response' do
        expect(json_response.count).to eq(11)
      end
    end
  end

  describe 'POST ticket' do
    let(:dispatch) { FactoryBot.create(:dispatch) }
    let(:ride) { FactoryBot.create(:ride, dispatch: dispatch) }
    let(:technician) { FactoryBot.create(:technician, ride: ride) }
    let(:params) do
      {
        rider: Faker::Name.name,
        contact: Faker::PhoneNumber.cell_phone,
        lat: Faker::Address.latitude.to_f,
        lng: Faker::Address.longitude.to_f,
        ttype: 'mechanical',
        startTime: DateTime.current,
        endTime: Faker::Date.forward(1),
        status: 'pending',
        ride_id: ride.id,
        technician_id: technician.id
      }
    end

    before { post :create, params: params }

    it 'returns a successful response' do
      expect(json_response['rider']).to eq(params[:rider])
      expect(json_response['contact']).to eq(params[:contact])
      expect(json_response['ttype']).to eq(params[:ttype])
      expect(json_response['startTime'].to_date).to eq(params[:startTime].to_date)
      expect(json_response['endTime'].to_date).to eq(params[:endTime].to_date)
      expect(json_response['status']).to eq(params[:status])
      expect(json_response['ride_id']).to eq(params[:ride_id])
      expect(json_response['technician_id']).to eq(params[:technician_id])
    end

    it 'checks if it was created' do
      expect { post :create, params: params }.to change { Ticket.count }.from(1).to(2)
    end
  end
end

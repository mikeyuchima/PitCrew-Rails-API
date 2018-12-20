# frozen_string_literal: true

class Api::V1::TicketsController < ApplicationController
  def index
    tickets = Ticket.all

    render json: tickets
  end

  def create
    ticket = Ticket.create(ticket_hash)

    render json: ticket
  end

  def ticket_hash
    params.permit(:rider, :contact, :lat,
                  :lng, :ttype, :startTime, :endTime,
                  :status, :ride_id, :technician_id)
  end
end

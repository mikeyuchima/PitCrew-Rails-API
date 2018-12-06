# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :ride
  belongs_to :technician
end

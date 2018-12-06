# frozen_string_literal: true

class Technician < ApplicationRecord
  belongs_to :ride
  has_many :tickets
end

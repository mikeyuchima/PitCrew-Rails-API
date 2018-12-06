# frozen_string_literal: true

class Ride < ApplicationRecord
  belongs_to :dispatch
  has_many :technicians
  has_many :tickets
end

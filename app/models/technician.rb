# frozen_string_literal: true

class Technician < ApplicationRecord
  has_secure_password

  belongs_to :ride
  has_many :tickets

  validates_presence_of :name, :email, :password_digest
end

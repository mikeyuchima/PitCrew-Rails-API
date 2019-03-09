# frozen_string_literal: true

class Technician < ApplicationRecord
  has_secure_password

  belongs_to :ride
  has_many :tickets

  validates_presence_of :username, :email, :password_digest
end

# frozen_string_literal: true

class Dispatch < ApplicationRecord
  has_secure_password

  has_many :rides
  validates_presence_of :username, :email, :password_digest
end

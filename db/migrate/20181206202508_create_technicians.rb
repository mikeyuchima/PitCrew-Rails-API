# frozen_string_literal: true

class CreateTechnicians < ActiveRecord::Migration[5.2]
  def change
    create_table :technicians do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.belongs_to :ride
      t.timestamps
    end
  end
end

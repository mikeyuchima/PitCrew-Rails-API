# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :rider
      t.string :contact
      t.decimal :lat, precision: 15, scale: 10
      t.decimal :lng, precision: 15, scale: 10
      t.string :ttype
      t.datetime :startTime
      t.datetime :endTime
      t.string :status

      t.belongs_to :ride
      t.belongs_to :technician
      t.timestamps
    end
  end
end

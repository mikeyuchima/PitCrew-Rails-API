# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :rider
      t.string :contact
      t.string :lat
      t.string :lng
      t.string :type
      t.string :startTime
      t.string :datetime
      t.datetime :endTime
      t.string :status

      t.belongs_to :ride
      t.belongs_to :technician
      t.timestamps
    end
  end
end

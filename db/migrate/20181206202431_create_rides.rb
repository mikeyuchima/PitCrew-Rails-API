# frozen_string_literal: true
class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.string :name
      t.datetime :date
      t.string :latStart
      t.string :longStart
      t.string :latEnd
      t.string :longEnd

      t.belongs_to :dispatch
      t.timestamps
    end
  end
end

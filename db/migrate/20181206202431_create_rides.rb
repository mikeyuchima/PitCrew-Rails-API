# frozen_string_literal: true
class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.string :name
      t.datetime :date
      t.decimal :latStart, :precision => 15, :scale => 10
      t.decimal :longStart, :precision => 15, :scale => 10
      t.decimal :latEnd, :precision => 15, :scale => 10
      t.decimal :longEnd, :precision => 15, :scale => 10

      t.belongs_to :dispatch
      t.timestamps
    end
  end
end

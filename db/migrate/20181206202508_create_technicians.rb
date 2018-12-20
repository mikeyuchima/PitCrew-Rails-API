# frozen_string_literal: true
class CreateTechnicians < ActiveRecord::Migration[5.2]
  def change
    create_table :technicians do |t|
      t.string :username
      t.string :name
      t.string :password

      t.belongs_to :ride
      t.timestamps
    end
  end
end

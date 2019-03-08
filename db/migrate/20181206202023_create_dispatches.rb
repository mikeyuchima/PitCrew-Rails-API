# frozen_string_literal: true

class CreateDispatches < ActiveRecord::Migration[5.2]
  def change
    create_table :dispatches do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end

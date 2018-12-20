# frozen_string_literal: true
class CreateDispatches < ActiveRecord::Migration[5.2]
  def change
    create_table :dispatches do |t|
      t.string :username
      t.string :password_hash

      t.timestamps
    end
  end
end

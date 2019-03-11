# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.date :release_date, null: false
      t.string :poster

      t.timestamps
    end
  end
end

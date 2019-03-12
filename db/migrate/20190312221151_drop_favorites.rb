# frozen_string_literal: true

class DropFavorites < ActiveRecord::Migration[5.2]
  def change
    drop_table :favorites
  end
end

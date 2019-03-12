# frozen_string_literal: true

class RemoveIsFavFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :is_fav, :boolean
  end
end

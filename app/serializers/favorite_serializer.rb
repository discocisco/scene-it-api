# frozen_string_literal: true

class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user, :movie
  has_one :user
  has_one :movie
end

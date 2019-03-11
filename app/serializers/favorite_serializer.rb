# frozen_string_literal: true

class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :comment
  has_one :user
  has_one :movie
end

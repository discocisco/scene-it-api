# frozen_string_literal: true

class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text_body
  has_one :movie
  has_one :user
end

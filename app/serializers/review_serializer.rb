class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text_body
  has_one :user
  has_one :movie
end

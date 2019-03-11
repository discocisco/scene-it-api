# frozen_string_literal: true

class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :poster
end

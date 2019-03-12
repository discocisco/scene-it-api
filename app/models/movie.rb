# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
end

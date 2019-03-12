# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :favorites
  has_many :users, through: :reviews
end

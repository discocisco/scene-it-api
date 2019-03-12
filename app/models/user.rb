# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :reviews
  has_many :movies, through: :reviews
end

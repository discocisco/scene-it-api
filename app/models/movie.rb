# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :favorites
end

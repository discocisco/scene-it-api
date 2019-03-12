# frozen_string_literal: true

class Favorite < ApplicationRecord
  belongs_to :user, inverse_of: :favorites
  belongs_to :movie, inverse_of: :favorites
end

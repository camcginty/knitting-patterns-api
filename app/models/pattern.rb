# frozen_string_literal: true

class Pattern < ApplicationRecord
  belongs_to :user
  has_many :squares
end

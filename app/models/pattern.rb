# frozen_string_literal: true

class Pattern < ApplicationRecord
  attr_accessor :x
  attr_accessor :y
  belongs_to :user
  has_many :squares
end

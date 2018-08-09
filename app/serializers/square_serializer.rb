# frozen_string_literal: true

class SquareSerializer < ActiveModel::Serializer
  attributes :id, :on
  belongs_to :pattern
end

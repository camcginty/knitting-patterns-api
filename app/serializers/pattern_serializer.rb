# frozen_string_literal: true

class PatternSerializer < ActiveModel::Serializer
  attributes :id, :title, :x, :y, :editable
  belongs_to :user
  has_many :squares

  def editable
    scope == object.user
  end
end

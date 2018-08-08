# frozen_string_literal: true

class PatternSerializer < ActiveModel::Serializer
  attributes :id, :title, :square0, :square1, :square2, :square3, :editable
  belongs_to :user
  has_many :squares

  def editable
    scope == object.user
  end
end

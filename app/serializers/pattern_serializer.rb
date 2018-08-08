class PatternSerializer < ActiveModel::Serializer
  attributes :id, :title, :square0, :square1, :square2, :square3, :editable
  belongs_to :user

  def editable
    scope == object.user
  end
end

class AddPatternIdToSquares < ActiveRecord::Migration[5.1]
  def change
    add_column :squares, :pattern_id, :integer
  end
end

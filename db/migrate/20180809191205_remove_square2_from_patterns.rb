class RemoveSquare2FromPatterns < ActiveRecord::Migration[5.1]
  def change
    remove_column :patterns, :square2, :boolean
  end
end

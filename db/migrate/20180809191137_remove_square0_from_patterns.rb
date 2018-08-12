class RemoveSquare0FromPatterns < ActiveRecord::Migration[5.1]
  def change
    remove_column :patterns, :square0, :boolean
  end
end

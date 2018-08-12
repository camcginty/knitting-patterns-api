class RemoveSquare1FromPatterns < ActiveRecord::Migration[5.1]
  def change
    remove_column :patterns, :square1, :boolean
  end
end

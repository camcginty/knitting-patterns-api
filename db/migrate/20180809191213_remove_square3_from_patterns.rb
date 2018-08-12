class RemoveSquare3FromPatterns < ActiveRecord::Migration[5.1]
  def change
    remove_column :patterns, :square3, :boolean
  end
end

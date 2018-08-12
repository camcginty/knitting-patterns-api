class AddYToPatterns < ActiveRecord::Migration[5.1]
  def change
    add_column :patterns, :y, :integer
  end
end

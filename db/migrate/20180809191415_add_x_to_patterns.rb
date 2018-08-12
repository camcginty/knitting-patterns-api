class AddXToPatterns < ActiveRecord::Migration[5.1]
  def change
    add_column :patterns, :x, :integer
  end
end

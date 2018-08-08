class CreatePatterns < ActiveRecord::Migration[5.1]
  def change
    create_table :patterns do |t|
      t.text :title
      t.boolean :square0
      t.boolean :square1
      t.boolean :square2
      t.boolean :square3

      t.timestamps
    end
  end
end

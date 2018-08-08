class CreateSquares < ActiveRecord::Migration[5.1]
  def change
    create_table :squares do |t|
      t.boolean :on

      t.timestamps
    end
  end
end

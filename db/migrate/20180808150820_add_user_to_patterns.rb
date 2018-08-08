class AddUserToPatterns < ActiveRecord::Migration[5.1]
  def change
    add_column :patterns, :user_id, :integer
  end
end

class RemoveLimitIdFromCategory < ActiveRecord::Migration[6.1]
  def change
    remove_column :categories, :limit_id
    drop_table :limits
  end
end

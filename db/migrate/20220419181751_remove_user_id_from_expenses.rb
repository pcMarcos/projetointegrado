class RemoveUserIdFromExpenses < ActiveRecord::Migration[6.1]
  def change
    remove_column :expenses, :user_id
  end
end

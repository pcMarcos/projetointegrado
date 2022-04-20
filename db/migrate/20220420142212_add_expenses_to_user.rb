class AddExpensesToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :expenses, :user, foreign_key: true, index: true
  end
end

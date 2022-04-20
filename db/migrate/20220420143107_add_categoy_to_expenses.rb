class AddCategoyToExpenses < ActiveRecord::Migration[6.1]
  def change
    add_reference :expenses, :category, foreign_key: true, index: true
  end
end

class AddDescriptionToExpenses < ActiveRecord::Migration[6.1]
  def change
    add_column :expenses, :description, :string
  end
end

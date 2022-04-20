class AddCategoryReferenceToLimit < ActiveRecord::Migration[6.1]
  def change
    add_column :limits, :name, :string
  end
end

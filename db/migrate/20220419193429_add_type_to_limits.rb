class AddTypeToLimits < ActiveRecord::Migration[6.1]
  def change
    add_column :limits, :type, :string
  end
end

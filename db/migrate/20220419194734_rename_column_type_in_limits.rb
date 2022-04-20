class RenameColumnTypeInLimits < ActiveRecord::Migration[6.1]
  def change
    rename_column :limits, :type, :type_id
  end
end

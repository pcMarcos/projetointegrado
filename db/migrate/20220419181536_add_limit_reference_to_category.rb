class AddLimitReferenceToCategory < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :limit, null: false, foreign_key: true
  end
end

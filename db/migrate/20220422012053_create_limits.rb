class CreateLimits < ActiveRecord::Migration[6.1]
  def change
    create_table :limits do |t|
      t.float :value
      t.string :name
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

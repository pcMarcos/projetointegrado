class CreateLimits < ActiveRecord::Migration[6.1]
  def change
    create_table :limits do |t|
      t.float :value

      t.timestamps
    end
  end
end

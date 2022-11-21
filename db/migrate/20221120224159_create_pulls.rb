class CreatePulls < ActiveRecord::Migration[7.0]
  def change
    create_table :pulls do |t|
      t.string :title
      t.string :description
      t.boolean :available
      t.string :size
      t.float :price

      t.timestamps
    end
  end
end

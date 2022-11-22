class AddLastNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :laast_name, :string
  end
end

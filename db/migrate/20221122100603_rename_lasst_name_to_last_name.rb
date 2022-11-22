class RenameLasstNameToLastName < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :lasst_name, :last_name
  end
end

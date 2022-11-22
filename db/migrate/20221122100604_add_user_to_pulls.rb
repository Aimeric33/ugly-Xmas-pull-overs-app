class AddUserToPulls < ActiveRecord::Migration[7.0]
  def change
    add_reference :pulls, :user, null: false, foreign_key: true
  end
end

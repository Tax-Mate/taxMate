class RemoveUserFromStateform < ActiveRecord::Migration[5.1]
  def change
    remove_column :stateforms, :user_id, :integer
  end
end

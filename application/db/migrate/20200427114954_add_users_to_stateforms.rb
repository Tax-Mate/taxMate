class AddUsersToStateforms < ActiveRecord::Migration[5.1]
  def change
    add_reference :stateforms, :user, foreign_key: true
  end
end

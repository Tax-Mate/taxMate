class AddUsersToFederalforms < ActiveRecord::Migration[5.1]
   belongs_to :user 
  def change
    add_reference :federalforms, :user, foreign_key: true
  end
end

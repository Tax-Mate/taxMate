class AddFieldsToStateforms < ActiveRecord::Migration[5.1]
  def change
    add_column :stateforms, :state, :string
  end
end

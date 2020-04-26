class RemoveIncomeFromStateforms < ActiveRecord::Migration[5.1]
  def change
    remove_column :stateforms, :Income, :decimal
  end
end

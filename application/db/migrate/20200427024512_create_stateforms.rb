class CreateStateforms < ActiveRecord::Migration[5.1]
  def change
    create_table :stateforms do |t|
      t.string :status
      t.decimal :total
      t.integer :user_id
      t.decimal :income
      t.date :date
      t.decimal :tax
      t.string :state
      t.string :time_type

      t.timestamps
    end
  end
end

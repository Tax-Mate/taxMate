class CreateStateforms < ActiveRecord::Migration[5.1]
    belongs_to :user 
  def change
    create_table :stateforms do |t|
     t.datetime :Date
      t.decimal :tax
      t.string :time_type
      t.decimal :Income
      t.decimal :total

      t.timestamps
    end
  end
end
 
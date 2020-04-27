class CreateFederalforms < ActiveRecord::Migration[5.1]
  belongs_to :user
  def change
    create_table :federalforms do |t|
      t.datetime :date
      t.decimal :tax
      t.string :time_type
      t.decimal :income
      t.decimal :total

      t.timestamps
    end
  end
end

class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :recurrence
      t.decimal :price
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end

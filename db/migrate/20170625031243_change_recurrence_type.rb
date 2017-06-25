class ChangeRecurrenceType < ActiveRecord::Migration[5.1]
  def change
  	change_column :rates, :recurrence, :string
  end
end

class ChangeDateTimeToDate < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :start_date, :date
		change_column :products, :end_date, :date
  end
end

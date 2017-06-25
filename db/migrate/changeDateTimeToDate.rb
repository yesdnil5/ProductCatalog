class ChangeDateTimeToDate <ActiveRecord::Migration
	def change
		change_column :products, :start_date, :date
		change_column :products, :end_date, :date
	end
end
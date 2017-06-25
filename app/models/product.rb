class Product < ApplicationRecord
	has_many :rates
	validates :title, presence: true
	validates :description, presence: true
  validate :end_date_cant_be_in_past, :start_date_cant_be_past_end_date

  def end_date_cant_be_in_past
		if end_date.present? && end_date < Date.today
			errors.add(:end_date, "Can't be in the past")
		end
	end

	def start_date_cant_be_past_end_date
		if start_date.present? && end_date.present? && start_date > end_date
			errors.add(:start_date, "Can't be later than end date")
		end
	end
end

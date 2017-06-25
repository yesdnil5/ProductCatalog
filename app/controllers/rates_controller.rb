class RatesController < ApplicationController

	def create
		@product = Product.find(params[:product_id])
		@rate = @product.rates.create(rate_params)
		redirect_to product_path(@product)
	end

	def update
		@product = Product.find(params[:product_id])
		@rate = @product.rates.find(params[:id])
		@rate.update(rate_params)
		redirect_to product_path(@product)
	end

	def destroy
		@product = Product.find(params[:product_id])
		@rate = @product.rates.find(params[:id])
		@rate.destroy
		redirect_to product_path(@product)
	end

	private
		def rate_params
			params.require(:rate).permit(:title, :description, :start_date, :end_date, :recurrence, :price)
		end
end

class ProductsController < ApplicationController

	before_action :process_dates, only: [:create, :update]

	def new
		@product = Product.new
	end

	def edit
		@product = Product.find(params[:id])
	end

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product
		else 
			render 'edit'
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		redirect_to products_path
	end

	def process_dates
		[:start_date, :end_date].each do |d|
			date = params[:product][d]
			date_parts = date.split('/')
			date_parts[0], date_parts [1] = date_parts[1], date_parts[0]
			params[:product][d] = date_parts.join('/')
		end
	end

	private
		def product_params
			params.require(:product).permit(:title, :description, :start_date, :end_date)
		end
end

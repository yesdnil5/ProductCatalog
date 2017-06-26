class ProductsController < ApplicationController

	def new
		@product = Product.new
	end

	def edit
		@product = Product.find(params[:id])
	end

	def index
		@products = Product.all
		@active_products = Product.active
		respond_to do |format|
			format.html
			format.json { render json: @active_products }
		end
	end

	def show
		@product = Product.find(params[:id])
		respond_to do |format|
			format.html
			if @product.end_date > Date.today
				format.json { render json: @product }
			else
				format.json { render json: {}}
			end
		end
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

	private
		def product_params
			params.require(:product).permit(:title, :description, :start_date, :end_date)
		end
end

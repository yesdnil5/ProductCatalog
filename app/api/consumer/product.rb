module Consumer
	class Product < Grape::API
		format :json
		prefix :api

		resource :products do
			desc 'Return all products'
			get "", root: :products do
				Product.all
			end
		end
	end
end

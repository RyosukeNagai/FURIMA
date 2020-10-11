class SearchesController < ApplicationController
	before_action :set_ransack
		def index
	    	@products = @q.result(distinct: true).page(params[:page]).per(5) 
     		@keyword = (search_params[:name_cont])
		end

	private

		def set_ransack
    		@q = Product.ransack(params[:q])
  		end

  		def search_params
    		params.require(:q).permit(:name_cont)
  		end
end

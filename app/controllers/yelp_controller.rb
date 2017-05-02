class YelpController < ApplicationController

	def search
		sendParams = { term: params[:term],
						  limit: 10
				  }

		response = @@CLIENT.search(params[:location], sendParams)

		render json: response
	end

end

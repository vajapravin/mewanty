class Api::ProductsController < ApplicationController
	def vote_by
		user = User.find(params[:user_id]) rescue (raise ActiveRecord::RecordNotFound)
		product = Product.find(params[:product_id]) rescue (raise ActiveRecord::RecordNotFound)
		product.vote_by :voter => user, :vote => params[:vote]
		render json: {success: true, message: 'Successfully liked!', total_votes: product.get_likes.size, is_liked: params[:vote]}
	rescue Exception => e
		render json: {success: false, message: e.message}
	end
end

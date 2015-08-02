class CartsController < ApplicationController

	def show
		if logged_in?
			@cart = Cart.where(user_id: current_user)
		else
		  @cart = session[:cart_id]
		end	
			@subtotal = 0
			@cart.each do |cart|
				@subtotal += Item.find(cart.item_id).price
			end
	end

	def new
		cart = Cart.new
		cart.item_id = params['id']
		current_user ? cart.user_id = current_user.id : nil

		if cart.save
      flash[:success] = "Item added to cart!"
      redirect_to :back
     else
     	flash[:alert] = "An error occurred"
      redirect_to :back
    end
		
	end

end
class LineItemsController < ApplicationController
  def create
    if logged_in?
      binding.pry
      if current_user.current_cart
        line_item = current_user.current_cart.add_item(params[:item_id])
      else
        current_user.create_current_cart
        line_item = current_user.current_cart.add_item(params[:item_id])
      end


      if line_item.save
        redirect_to cart_path(current_user.current_cart), {notice: 'Item added to cart!'}
      else
        redirect_to store_path, {notice: 'Unable to add item'}
      end

    else
      redirect_to new_user_session_path
    end
  end
end

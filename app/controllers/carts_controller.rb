class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :checkout]

  def checkout
    @cart.cart_checkout
    @cart.line_items.destroy_all
    current_user.update(current_cart_id: nil)
    redirect_to cart_path(@cart), {notice: 'Thank you for your order'}
  end

  private
  def set_cart
    @cart = Cart.find_by(id: params[:id])
  end
end

class CartsController < ApplicationController
  def show
    @cart = Cart.find_by(id: params[:id])
  end

  def checkout
    cart = Cart.find_by(id: params[:id])
    cart.checkout
    redirect_to cart_path(cart)
  end

  private

  def set_cart
    Cart.find_by(id: params[:id])
  end

end

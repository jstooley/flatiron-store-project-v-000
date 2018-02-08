class CartsController < ApplicationController
  def show
    @cart = set_cart
  end

  def checkout
    cart = set_cart
    cart.checkout
    redirect_to cart_path(cart)
  end

  private

  def set_cart
    Cart.find(params[:id])
  end

end

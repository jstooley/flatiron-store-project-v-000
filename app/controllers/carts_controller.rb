class CartsController < ApplicationController
  def show
    @cart = Cart.find_by(id: params[:id])
  end

  def checkout
    cart = Cart.find_by(id: params[:id])
    cart.checkout
  end

end

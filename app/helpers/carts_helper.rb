module CartsHelper
  def current_cart
    if cart = Cart.find_by(id: current_user.current_cart_id)
      cart
    else
      cart = create_current_cart
    end
  end

  def create_current_cart
    new_cart = Cart.create
    current_user.current_cart_id = new_cart.id
    new_cart.save
  end
end

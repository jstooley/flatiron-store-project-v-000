module CartsHelper
  def current_cart
    if Cart.find_by(id: current_user.current_cart_id)
    else
      create_current_cart
    end
  end

  def create_current_cart
    new_cart = carts.create
    current_user.current_cart_id = new_cart.id
    save
  end
end

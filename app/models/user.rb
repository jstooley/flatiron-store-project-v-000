class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :carts
  belongs_to :current_cart, class_name: 'Cart'

  def create_current_cart
    self.current_cart = self.carts.build(user_id: self)
    self.save
    current_cart
  end
end

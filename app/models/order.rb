class Order < ActiveRecord::Base
  belongs_to :cart
  has_many :items
end

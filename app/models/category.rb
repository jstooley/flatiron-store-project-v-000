class Category < ActiveRecord::Base
  has_many :items
  has_many :orders, through: :items
end

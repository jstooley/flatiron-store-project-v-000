class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items

  def total
    total = 0
    self.line_items.each do |line_item|
      total += (line_item.item.price * line_item.quantity)
    end
    total
  end

  def add_item(product_id)
      line_item = LineItem.find_by(item_id: product_id)
    if line_item
      line_item.update(quantity: line_item.quantity += 1)
    else
      line_item = self.line_items.build(item_id: product_id)
    end
    line_item
  end

  def cart_checkout
    self.line_items.each do |line_item|
      line_item.item.inventory -= line_item.quantity
      line_item.item.save
    end
    self.update(status: 'submitted')
  end
end

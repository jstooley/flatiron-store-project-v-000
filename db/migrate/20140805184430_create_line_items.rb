class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integr :quantity. default: 1
      t.integer :cart_id
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.string :password_digest
      t.integer :current_cart_id
    end
  end
end

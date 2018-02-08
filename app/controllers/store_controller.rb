class StoreController < ApplicationController
  def index
    @categories = Category.all
    @items = Items.all
  end
end

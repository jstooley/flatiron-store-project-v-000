class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = set_item
  end

  private

  def set_item
    Item.find_by(id: params[:id])
  end

end

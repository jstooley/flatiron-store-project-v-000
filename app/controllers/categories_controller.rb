class CategoriesController < ApplicationController

  def index
  end
  def show
    @category = Category.find(id: params(:id))
  end

end

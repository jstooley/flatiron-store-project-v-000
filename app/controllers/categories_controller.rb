class CategoriesController < ApplicationController

  def index
  end
  def show
    binding.pry
    @category = Category.find(id: params(:id))
  end

end

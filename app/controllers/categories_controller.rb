class CategoriesController < ApplicationController
  before_action :set_category, only: :show
  def index
    @categories = Category.all
  end
  def show
    @category = set_category
  end
  private

  def set_category
    Category.find_by(id: params[:id])
  end

end

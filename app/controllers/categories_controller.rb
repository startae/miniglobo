class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @contact = Contact.new
  end
end

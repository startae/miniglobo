class ArticlesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @contact = Contact.new
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new(article: @article)
  end
end

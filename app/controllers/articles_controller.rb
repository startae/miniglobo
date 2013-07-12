class ArticlesController < ApplicationController
  def index
    @category = Category.friendly.find(params[:category_id])
    @contact = Contact.new
  end

  def show
    @article = Article.friendly.find(params[:id])
    @comment = Comment.new(article: @article)
  end
end

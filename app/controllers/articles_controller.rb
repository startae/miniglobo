class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @comment = Comment.new(article: @article)
  end
end

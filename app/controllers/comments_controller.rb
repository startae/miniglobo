class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]

  # POST /comments
  def create
    @comment = Comment.new(comment_params)
    @article = @comment.article

    if @comment.save
      redirect_to [@article.category, @article]
    else
      render template: 'articles/show'
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
    redirect_to comments_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:name, :email, :body, :article_id)
    end
end

require_dependency "blug/application_controller"

module Blug
  class CommentsController < ApplicationController

    def create
      @article = Article.find(params[:article_id])
      @comment = @article.comments.create(comment_params)
      flash[:notice] = 'Comment has been created!'
      redirect_to article_path(@article)
    end

    private
      def comment_params
        params.require(:comment).permit(:text)
      end
  end
end

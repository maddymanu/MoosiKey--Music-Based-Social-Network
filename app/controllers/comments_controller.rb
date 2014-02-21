class CommentsController < ApplicationController

  before_filter :correct_user, only: :destroy


  def create
    @micropost = Micropost.find(params[:micropost_id])
    @comment = Comment.new(params[:comment])
    @comment.micropost = @micropost
    @comment.user_id = current_user.id
    @comment.user = current_user
    if @comment.save
       flash[:success] = "Comment created!"
       redirect_to @micropost
    else
      render 'shared/_comment_form'
    end
  end


  def destroy
    @comment.destroy
    redirect_to root_path
  end


  private 

  def correct_user
      @comment = current_user.comments.find_by_id(params[:id])
    end

end
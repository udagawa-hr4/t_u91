class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to "/posts/#{@comment.post_id}"
  end
  def edit
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @comments = @post.comments.includes(:user).paginate(page: params[:page], per_page: 2)
  end
  def update
    @comment = Comment.find(params[:id])
    post = @comment.post_id
    if @comment.update(comment_params)
      redirect_to controller: :posts, action: :show, id: post
    else
      redirect_to action: :edit
    end
  end
  def destroy
    @comment = Comment.find(params[:id])
    post = @comment.post_id
    @comment.destroy
    redirect_to controller: :posts, action: :show, id: post
  end
  
  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end

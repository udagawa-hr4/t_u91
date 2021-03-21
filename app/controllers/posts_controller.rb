class PostsController < ApplicationController
  def index
    
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to action: :show
    else
      render :new
    end
  end
  def tweets
    @posts = Post.all
  end
  private
  def post_params
    params.require(:post).permit( :title, :text, :image).merge(user_id: current_user.id)
  end

end

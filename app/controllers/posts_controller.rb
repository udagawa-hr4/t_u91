class PostsController < ApplicationController
  def index
    
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to action: :tweets
    else
      render :new
    end
  end
  def tweets
    @posts = Post.paginate(page: params[:page], per_page: 8)
  end
  def show
    @post = Post.find(params[:id])
    # @comments = @post.comments.includes(:user)
    @comments = Comment.paginate(page: params[:page], per_page: 2)
    @comment = Comment.new
  end
  private
  def post_params
    params.require(:post).permit( :title, :text, :image).merge(user_id: current_user.id)
  end

end

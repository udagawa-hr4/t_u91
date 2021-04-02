class PostsController < ApplicationController
  before_action :authenticate_user!,except: [:index,:show,:tweets,:search]
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
    @comments = @post.comments.includes(:user).paginate(page: params[:page], per_page: 2)
    @comment = Comment.new
  end
  def search
    @posts = Post.search(params[:search]).paginate(page: params[:page], per_page: 8)
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to action: :show
    else
      render :edit
    end
  end
  def destroy
    @post = Post.find(params[:id])
    user = @post.user_id
    @post.destroy
    redirect_to controller: :users, action: :show, id: user
  end

  private
  def post_params
    params.require(:post).permit( :title, :text, :image).merge(user_id: current_user.id)
  end

end

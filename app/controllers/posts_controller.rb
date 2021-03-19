class PostsController < ApplicationController
  def index
    
  end
  def tweets
    @posts = Post.all
  end
end

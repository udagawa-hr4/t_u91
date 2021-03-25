class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.paginate(page: params[:page], per_page: 2)
  end
end

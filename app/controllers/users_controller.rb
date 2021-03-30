class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.paginate(page: params[:page], per_page: 2)
  end
  def edit
    @user = User.find(params[:id])
    @user.profile = Profile.new if @user.profile.blank?
    
   
  end
 
  
  
  def update
    @user = User.find(params[:id])
    if @user.update(profile_params)
    redirect_to user_path(@user)
    else
    redirect_to action: :show
    end
  end
  private
  def profile_params
    params.require(:user).permit(:nickname, profile_attributes: [:introduction,:birthday])
  end
end

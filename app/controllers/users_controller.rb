class UsersController < ApplicationController
  before_action :authenticate_user!,except: [:show]
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("created_at DESC").paginate(page: params[:page], per_page: 2)
  end
  def edit
    @user = User.find(params[:id])
    if user_signed_in? && @user.id == current_user.id
    @user.profile = Profile.new if @user.profile.blank?
    else
      redirect_to root_path
    end
    
   
  end
 
  
  
  def update
    @user = User.find(params[:id])
    if user_signed_in? && @user.id == current_user.id
      if @user.update(profile_params)
      redirect_to user_path(@user)
      else
      redirect_to action: :show
      end
    else
      redirect_to root_path
    end 
  end
  private
  def profile_params
    params.require(:user).permit(:nickname, profile_attributes: [:introduction,:birthday])
  end
end

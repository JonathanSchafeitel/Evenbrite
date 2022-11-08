class UsersController < ApplicationController
  def show
    @users = User.find(params[:id])
  end
  def edit
    @users = User.find(params[:id])
  end

def update
  users_params = params.require(:user).permit(:first_name,:last_name)
  @user = User.find(params[:id])
  if @user.update(users_params)
    redirect_to event_path
  end
end
end

class UserController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
        redirect_to '/user/new',success: "User Ragistered Successfully!"
    else
        redirect_to '/user/new' ,danger: "Invalid Email or Phone Number you entered!"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password,:gender,:age,:phone)
  end


end

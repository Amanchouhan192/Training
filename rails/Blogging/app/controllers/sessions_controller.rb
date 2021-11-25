class SessionsController < ApplicationController
  def index
  end

  def new
    
  end

  def show
  end

  def create
    @user = User.find_by(email:params[user_params])
    if @user.present? && @user.params[user_params]
      session[:user_id] = @user.id
      redirect_to '/home/show',notice: "Logged In Successfully"
    else
      flash[:alert] = "Invalid Email or password"
      render 'sessions/new'
    end

  end

  def edit
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/sessions/create',notice: "Logged out"
  end

  def delete
  end

  private 

  def user_params
    params.require(:user).permit(:email, :password)
  end
end

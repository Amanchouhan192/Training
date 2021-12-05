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

  def login_check
    @user = User.find_by(email: params[:user][:email]) 
    if @user.present?
        if @user.password === params[:user][:password]
            session[:user_id] = @user.id  
            redirect_to '/post/index'
        else
            redirect_to '/user/login' ,danger: "Invalid Password!"
        end
   else
       redirect_to '/user/login' ,danger: "Invalid email or password!"
   end
  end

  def signup
    if session[:user_id] != nil
        redirect_to '/post/index'
    end
  end

  def login
    if session[:user_id] != nil
        redirect_to '/post/index'
    end
  end

  def logout     
    session[:user_id] = nil         
    redirect_to '/user/login' 
  end  

  private

  def user_params
    params.require(:user).permit(:name,:email,:password, :password_confirmation,:gender,:age,:phone)
  end


end

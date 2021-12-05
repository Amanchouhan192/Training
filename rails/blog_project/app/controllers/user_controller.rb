class UserController < ApplicationController
 
  def index
  end

  def show
  end
  def new
    @user = User.new
  end
  
  def create  #for signup things
    #Instantiate a new object using form paramete
       @user = User.new(user_params) # mass assignment 
      #save the object
    if @user.save 
        #if save succeeds,redirect to the next index action
      redirect_to '/post/welcome'   #this is redirecting to the new.html.erb page
    else
        #if save fails ,redisplay the form so user can fix problem.
      render('/post/welcome') 
    end
  
  end
  
  def login_create
      @user = User.find_by(email: params[:user][:email]) 
      if @user.present?
          if @user.password == params[:user][:password]
              session[:user_id] = @user.id  
              redirect_to '/post/index'
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
      params.require(:user).permit(:name,:email,:password,:gender,:age,:phone)
  end
    
end
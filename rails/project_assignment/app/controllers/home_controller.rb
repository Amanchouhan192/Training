class HomeController < ApplicationController
    def index
    end
    
    def show
    end

    def new
      @user = User.new
    end
    
    def create
      #Instantiate a new object using form paramete
         @user = User.new(user_params) # mass assignment 
        #save the object
      if @user.save 
          #if save succeeds,redirect to the next index action
        redirect_to '/home/new'   #this is redirecting to the new.html.erb page
      else
          #if save fails ,redisplay the form so user can fix problem.
        render('new') 
      end
    
    end
    
    def edit
    end
    
    def update
    end
    
    def delete
    end 
    
    def destroy
    end
    
    private 
    
    def user_params
        params.require(:user).permit(:name,:email,:password)
    end
      
end

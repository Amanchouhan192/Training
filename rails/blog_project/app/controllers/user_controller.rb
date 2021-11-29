class UserController < ApplicationController

        def index
          @users = User.all
        end
        
        def create
        end
        
        private 
        
        def user_params
            params.require(:user).permit(:name,:email,:password,:gender,:age,:phone)
        end
          
        def blog_params
          params.permit(:title,:body)
        end
          
    
    
end

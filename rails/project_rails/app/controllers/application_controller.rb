class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user   
        User.find_by(id: session[:user_id])
    end
    
    
    add_flash_types :danger, :info, :warning, :success #flash alert

end



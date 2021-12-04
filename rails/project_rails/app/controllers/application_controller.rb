class ApplicationController < ActionController::Base
    helper_method :current_user
    helper_method :logged_in?

    def current_user   
        User.find_by(id: session[:user_id])
    end
    
    def logged_in?
       !current_user.nil?
    end
    
    add_flash_types :danger, :info, :warning, :success #flash alert

end

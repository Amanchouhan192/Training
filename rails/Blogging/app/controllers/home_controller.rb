class HomeController < ActionController::API
  def index
  end

  def login_new
    #redirect_to(:controller => 'home', :action => 'index')
  end

  def show
    @user = User.all
  end

  def new
    @user = User.new # mass assignment 
  
  end

  def create
    #@user = User.new
    @user = User.new(user_params) # mass assignment 
    #save the object
    
    if @user.save 
      #if save succeeds,redirect to the next index action
      redirect_to '/blogs/show'
    else
      #if save fails ,redisplay the form so user can fix problem.
      render'/blogs/show'
    end
  end

  def edit
  end

  def delete
  end
  private 

    def user_params
      params.require(:user).permit(:name, :email, :password, :gender, :age, :phone)
    end
end


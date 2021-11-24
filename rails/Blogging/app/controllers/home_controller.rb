class HomeController < ActionController::API
  def index
  end

  def login
    #redirect_to(:controller => 'home', :action => 'index')
  end

  def show
  end

  def new
    @user = User.new # mass assignment 
  
  end

  def create
    debugger
    #@user = User.new
    @user = User.new(user_params) # mass assignment 
    #save the object
    
    if @user.save 
      #if save succeeds,redirect to the next index action
      redirect_to '/home/show'
    else
      #if save fails ,redisplay the form so user can fix problem.
      render('new')
    end
  end

  def edit
  end

  def create
    
  end

  def delete
  end
  private 

    def user_params
      params.require(:user).permit(:name, :email, :password, :gender, :age, :phone)
    end
end


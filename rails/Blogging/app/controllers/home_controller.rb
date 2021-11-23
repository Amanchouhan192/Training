class HomeController < ApplicationController
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
    #@user = User.new
    @user = User.new(home_params) # mass assignment 
    #save the object
    if @user.save 
      #if save succeeds,redirect to the next index action
      redirect_to(home_path)
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
end


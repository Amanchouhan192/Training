class RagistrationController < ApplicationController
  def index
   
  end

  def show
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    #@user = User.new
    @user = User.new(params[:user]) # mass assignment 
    #save the object
    if @user.save 
      #if save succeeds,redirect to the next index action
      redirect_to('show')
    else
      #if save fails ,redisplay the form so user can fix problem.
      render('create')
    end
  end

  def edit
  end

  def delete
  end

  #private 

    #def ragistration_params
      #params.require(:user).permit(:name, :email, :password, :gender, :age, :phone)
    #end
  
end

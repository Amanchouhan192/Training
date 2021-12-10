class PagesController < ApplicationController
  
  def index
    @employee = Employee.order('name ASC')
  end

  def show
    @employee = Subject.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
     #Instantiate a new object using form parameter
     @employee = Employee.new(params[:fname]) # mass assignment 
     #save the object
     if @employee.save 
       #if save succeeds,redirect to the next index action
       redirect_to(pages_path)
     else
       #if save fails ,redisplay the form so user can fix problem.
       render('new')
     end
  end

  def edit
    @employee = Employee.find(params[:id])
    #validates :form_checkbox, acceptance: {accept: true} , on: :create, 
    #allow_nil: false
  end

  def update
  end

  def delete
  end

  def destroy
  end

end

class HomeController < ApplicationController
  def index
    @employees = Employee.all
   # render('index')
  end

  def hello
    #redirect_to(:controller => 'home', :action => 'index')
    @stundents = Student.all

    @array = [0,1,2,3,4,5,6,7]

    @id = params['id']
    @page = params[:page] 
  end
end

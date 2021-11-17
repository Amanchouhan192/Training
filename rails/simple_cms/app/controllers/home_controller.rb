class HomeController < ApplicationController
  def index
    @employees = Employee.all
   # render('index')
  end

  def hello
    redirect_to(:controller => 'home', :action => 'index')
  end
end

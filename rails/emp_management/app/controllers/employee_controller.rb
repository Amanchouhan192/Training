class EmployeeController < ApplicationController
  def new
    @employee  = Employee.new
  end
  
  def create
  end
end

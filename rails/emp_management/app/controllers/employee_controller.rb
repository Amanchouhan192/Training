class EmployeeController < ApplicationController
  def new
    @employee  = Employee.new
  end
  
  def create
    @employee = Employee.new(employee_params)
	  if @employee.save
        redirect_to '/employee/new'
	  else
	    render 'new'
	  end
    end

  private

  def employee_params
    params.require(:employee).permit(:name,:email,:gender,:salary,:department,:email)
  end
end

class EmployeeController < ApplicationController
  def new
    @employee  = Employee.new
  end
  
  def create
    @employee = Employee.new(employee_params)
	  if @employee.save
        redirect_to '/employee/new',success: "User Ragistered Successfully!"
	  else
	    render 'new'
	  end
  end

  private

  def employee_params
    params.require(:employee).permit(:name,:email,:emp_id,:gender,:salary,:department)
  end
end

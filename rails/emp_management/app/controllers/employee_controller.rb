class EmployeeController < ApplicationController
  def new
    @employee  = Employee.new
  end

  def index
    @employees  = Employee.all
  end

  def create
    @employee = Employee.new(employee_params)
    department = Department.find_by(name: employee_params[:dept])
    @employee.department_id = department.id 
	  if @employee.save
        redirect_to '/departments/index',success: "User Ragistered Successfully!"
	  else
	    render 'new'
	  end
  end

  private

  def employee_params
    params.require(:employee).permit(:name,:email,:gender,:salary,:dept)
  end
end

class EmployeeController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee  = Employee.new
    @departments = Department.all
  end

  def create
    @employee = Employee.new(employee_params) 
    if @employee.save
      redirect_to '/employee/index'
    else
      render 'new'
    end
  end
  
  private

    def employee_params
      params.require(:employee).permit(:name, :email, :gender, :salary, :department_id)
    end
end

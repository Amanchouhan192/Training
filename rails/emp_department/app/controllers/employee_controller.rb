class EmployeeController < ApplicationController
  def index
  end

  def new
    @employee  = Employee.new
  end

  def show
  end

  def create
    @employee = Employee.new(employee_params)
    #department = Department.find_by(name: employee_params[:dept])
    #@employee.department_id = department.id 
    if @employee.save
      redirect_to '/employee/index'
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
  end

  def delete
  end

  private
  def employee_params
    params.require(:employee).permit(:name,:email,:gender,:salary)
  end
end

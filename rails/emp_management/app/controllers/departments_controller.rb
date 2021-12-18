class DepartmentsController < ApplicationController
  def index
    @employees = Employee.all
  end
end

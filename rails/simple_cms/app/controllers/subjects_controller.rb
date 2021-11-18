class SubjectsController < ApplicationController
  
  def index
    @subjects = Subject.order('name ASC')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
  
end

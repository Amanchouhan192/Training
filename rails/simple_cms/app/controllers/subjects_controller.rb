class SubjectsController < ApplicationController
  
  def index
    @subjects = Subject.order('name ASC')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
    #@subject = Subjects.new(:visible => false)
  end

  def create
    #Instantiate a new object using form parameter
    @subject = Subject.new(subject_params) # mass assignment 
    #save the object
    if @subject.save
      #if save succeeds,redirect to the next index action
      redirect_to(subjects_path)
    else
      #if save fails ,redisplay the form so user can fix problem.
      render('new')
    end


  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private 

    def subject_params
      params.require(:subject).permit(:name)
    end
  
end

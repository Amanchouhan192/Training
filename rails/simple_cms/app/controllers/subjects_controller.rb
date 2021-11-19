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
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end 

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to(subjects_path)
  end

  private 

    def subject_params
      params.require(:subject).permit(:name)
    end
  
end

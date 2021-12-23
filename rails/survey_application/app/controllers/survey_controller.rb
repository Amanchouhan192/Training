class SurveyController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def create
    debugger
    @survey  = Survey.new(survey_params)
    if @survey.save
      redirect_to '/survey/index'
    else
      render 'new'
    end
  end

  def show
  end

  def update
  end

  def edit
  end

  private

    def survey_params
		  params.require(:survey).permit(:id,:name,questions_attributes: [:id, :body]
      )
	  end

end

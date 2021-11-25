class BlogsController < ApplicationController
        def index
          @blogpost = Blogpost.all
        end
      
        def show
          @blogpost = Blogpost.find_by(params[:id])
        end
      
        def new
          @blogpost = Blogpost.new
        end
      
        def create
          #Instantiate a new object using form parameter
          @blogpost = Blogpost.new(params[:id]) # mass assignment 
          #save the object
          if @blogpost.save 
            #if save succeeds,redirect to the next index action
            redirect_to 'show'
          else
            #if save fails ,redisplay the form so user can fix problem.
            render('new')
          end
      
      
        end
      
        def edit
          @blogpost = Blogpost.find_by(params[:id])
          #validates :form_checkbox, acceptance: {accept: true} , on: :create, 
          #allow_nil: false
        

        end
      
        def update
          @blogpost = Blogpost.find(params[:id])
          if @blogpost.update(blog_params)
            redirect_to @blogpost
          else
            render('edit')
          end
        end
      
        def delete
          @blogpost = Blogpost.find_by(params[:id])
          #render 'index'
        end 
      
        def destroy
          @blogpost = Blogpost.find_by(params[:id])
          @blogpost.destroy
          redirect_to 'index'
        end
      
        private 
      
          def blog_params
            params.require(:blogpost).permit(:title,:body)
          end
        
      end
      

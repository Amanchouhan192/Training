class BlogsController < ApplicationController
        def index
          @blogposts = Blogpost.all
        end
      
        def show
          @blogpost = Blogpost.find(params[:id])
        end
      
        def new
          @blogpost = Blogpost.new
        end
      
        def create
          #Instantiate a new object using form parameter
          @blogpost = Blogpost.new(blog_params) # mass assignment 
          #save the object
          if @blogpost.save 
            #if save succeeds,redirect to the next index action
            #redirect_to 'index'
            redirect_to blogs_new_path(@blogpost)
          else
            #if save fails ,redisplay the form so user can fix problem.
            render('new')
          end
      
      
        end
      
        def edit
          @blogpost = Blogpost.find(params[:id])
        end
      

      
        def update
          @blogpost = Blogpost.find(params[:id])
          if @blogpost.update(blog_params)
            redirect_to blogs_new_path(@blogposts)
          else
            render('edit')
          end
        end
      
        def delete
          @blogpost = Blogpost.find(params[:id])
        end 
      
        def destroy
          @blogpost = Blogpost.find(params[:id])
          @blogpost.destroy
          redirect_to @blogpost
          render 'delete'
        end
      
        private 
      
          def blog_params
            params.require(:blogpost).permit(:title,:body)
          end
        
      end
      

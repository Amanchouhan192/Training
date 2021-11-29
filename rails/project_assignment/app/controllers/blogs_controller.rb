class BlogsController < ApplicationController
      def blog_index
        @blogpost = Blogpost.all
      end
    
      def blog_show
        @blogpost = Blogpost.find(params[:id])
      end
    
      def blog_new
        @blogpost = Blogpost.new
      end
    
      def create_blog
      #Instantiate a new object using form paramete
        @blogpost = Blogpost.new(blog_params) # mass assignment 
        #save the object
        if @blogpost.save 
          #if save succeeds,redirect to the next index action
          redirect_to '/user/new'
        else
          #if save fails ,redisplay the form so user can fix problem.
          render('/user/new')
        end
    
    
      end
    
      def blog_edit
        @blogpost = Blogpost.find(params[:id])
      end
    

    
      def blog_update
        @blogpost = Blogpost.find(params[:id])
        if @blogpost.update(blog_params)
          redirect_to blogs_new_path(@blogposts)
        else
          render('edit')
        end
      end
    
      def blog_delete
        @blogpost = Blogpost.find(params[:id])
      end 
    
      def blog_destroy
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

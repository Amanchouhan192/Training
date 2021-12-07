class PostController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		#Instantiate a new object using form paramete
		@post = Post.new(blog_params) # mass assignment 
		#save the object
		if @post.save 
			#if save succeeds,redirect to the next index action
			redirect_to '/post/index'
		else
			#if save fails ,redisplay the form so user can fix problem.
			render('/post/index')
		end
	end

	def edit
		@post = Post.find(params[:id])
	end
		
  def update
		@post = Post.find(params[:id])
		if @post.update(blog_params)
			redirect_to '/post/index'
		else
			render('edit')
		end
	end

	def delete
		@post = Post.find(params[:id])
	end 

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to '/post/index'
	end

  private 
		
  def blog_params
		params.require(:post).permit(:title,:body)
	end

end

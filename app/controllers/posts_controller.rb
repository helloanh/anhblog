class PostsController < ApplicationController
	def index
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new post_params

		if @post.save
			redirect_to @post, notice: "post successfully saved"
		else
			render 'new', notice: "Unable to save post" 
		end

	end

	def post_params
		params.require(post).permit(:title, :content)
	end

end
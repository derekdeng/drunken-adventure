class PostsController < ApplicationController
 def new
 end
 def show
 @post = Post.find(params[:id])
 end
 def index
 @posts = Post.all
 end
 def create
 @post = Post.new(post_params)
 @post.save
 redirect_to @post
 end
 private
 def post_params
 params.require(:post).permit(:title, :text)
 end
end
class PostsController < ApplicationController

  def new
  	@post = Post.new
  end

  def index
    @post = Post.all
  end

  def create
    @post = Post.new(params.require(:post).permit(:rating, :location, :lengthofstay, :hostel, :hostelreview, :attraction, :attractionreview, :overall, :latitude, :longitude))
    if @post.save
    	redirect_to posts_path
    else
    	render 'new'
    end

  end

end

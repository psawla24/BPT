class PostsController < ApplicationController

  before_filter :find_user, :only => [:new, :create, :index, :edit, :update, :destroy]

  # before_filter :user_validation, :only => [:new, :create, :edit, :update, :destroy]

  def all
    @posts = Post.all
    @users = User.all
  end

  def north_america
    @posts = Post.where(continent: "NAX")
    @users = User.all
  end

  def south_america
    @posts = Post.where(continent: "SAX")
    @users = User.all
  end

  def europe
    @posts = Post.where(continent: "EUX")
    @users = User.all
  end

  def asia
    @posts = Post.where(continent: "ASX")
    @users = User.all
  end

  def australia
    @posts = Post.where(continent: "AUX")
    @users = User.all
  end

  def africa
    @posts = Post.where(continent: "AFX")
    @users = User.all
  end

  def antarctica
    @posts = Post.where(continent: "ANX")
    @users = User.all
  end

  def new
    @post = @user.posts.new
    user_validation
  end

  def index
    @posts = @user.posts.all
  end

  def show
    @post = Post.find(params[:id])
    @user = User.where(id: @post.user_id).first
  end

  def create
    @post = @user.posts.create(post_params)
    @post.user_id = @user.id
    if @post.save
    	redirect_to user_path(@user)
    else
    	render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
    user_validation
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
      redirect_to user_posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    user_validation
    @post.destroy
    redirect_to posts_path
  end

  def find_user
    @user = User.find(params[:user_id])

    if @user == false
      redirect_to root_path 
    end
  end

  def post_params
    params.require(:post).permit(:id, :rating, :city, :country, :continent, :hostel, :hostel_rating, :hostel_review, :eatery, :eatery_dish, :sight_one, :sight_two, :sight_three, :overall, :safety_tips, :latitude, :longitude, :photo_one, :photo_two, :photo_three, :photo_four, :user_id)
  end

  def user_validation
    if @post.user_id != current_user.id || current_user == nil
      redirect_to root_path
    end
  end

end

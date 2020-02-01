class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  # GET /blogs
  def index
    @blogs = Blog.all
  end

  # GET /blogs/1
  def show
    @blog = Blog.find_by(id: params[:id])
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    @blog.save
    redirect_to blogs_path
  end

  def update
    @blog.update(blog_params)
    redirect_to @blog
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path
  end

  private
    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :body, :image , :user_id)
    end
end

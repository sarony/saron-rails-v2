require'pry'

class BlogController < ApplicationController
  skip_before_action :authorize, :except => [:new, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.friendly.find(params[:slug])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_post_params)
    redirect_to blogs_path
  end

  def edit
    @blog = Blog.friendly.find(params[:slug])
  end

  def update
    @blog = Blog.friendly.find(params[:slug])
    @blog.update(blog_post_params)
    redirect_to blogs_path
  end

  private

  def blog_post_params
    params.require(:blog).permit(:title, :preview, :body)
  end

end

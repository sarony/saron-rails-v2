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

end

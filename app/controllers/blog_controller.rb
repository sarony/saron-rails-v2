require'pry'

class BlogController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.friendly.where(:id => params[:slug]).first
  end

end

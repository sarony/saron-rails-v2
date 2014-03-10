require'pry'

class BlogController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.friendly.find(params[:slug])
    binding.pry
  end

end

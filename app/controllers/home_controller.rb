class HomeController < ApplicationController
  skip_before_action :authorize
  
  def index
  end

  def about
  end

  def projects
  end

end

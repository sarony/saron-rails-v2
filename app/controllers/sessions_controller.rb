class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
    session[:password] = params[:password]
    flash[:notice] = 'Yea gurl!'
    redirect_to '/'
  end

  def destroy
    reset_session
    flash[:notice] = 'You out!'
    redirect_to '/'
  end

end
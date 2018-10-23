class SessionsController < ApplicationController

  # before_action :flash_action

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
     if user && user.authenticate(params[:session][:password])
        redirect_to  user
      else
        flash.now[:danger] = 'Invalid username or password'
        render 'new'
      end
   end

 #   def destroy
 #    log_out if logged_in?
 #    redirect_to root_url
 #   end
 # end
end

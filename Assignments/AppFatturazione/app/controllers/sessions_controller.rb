class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      cookies.permanent.[:user_name] = current_user.email
      cookies.permanent[:password] = params[:session][:password]
      redirect_to  controller: 'clients', action: 'index', log_in_message: "You have successfully logged in."
    else
      # Create an error message.
      redirect_to  controller: 'sessions', action: 'new', error_message: "Invalid email/password combination."
    end
  end

  def destroy
    log_out
    cookies.delete :user_name
    cookies.delete :password
    redirect_to controller: 'static_pages', action: 'home', log_out_message: "You have successfully logged out."
  end
end

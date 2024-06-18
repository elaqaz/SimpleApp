# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
    # Renders the login form
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session  # Prevent session fixation attacks
      log_in(user)   # Custom method to handle login logic
      redirect_to user, notice: 'Logged in successfully!'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    if logged_in?
      session[:user_id] = nil
      log_out  # Custom method to handle logout logic
    end
    redirect_to root_path, notice: 'Logged out successfully!'
  end

  private

  # Define log_in method to handle setting the session user_id
  def log_in(user)
    session[:user_id] = user.id
  end

  # Define log_out method to handle resetting the session
  def log_out
    reset_session
  end

  # Define logged_in? helper method to check if user is logged in
  def logged_in?
    !session[:user_id].nil?
  end
end



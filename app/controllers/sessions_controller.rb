class SessionsController < ApplicationController

  def new   
  end

  def create 
    user = User.find_by_email(params[:signin][:email])
    if user
      if user.authenticate(params[:signin][:password])
        session[:user_id] = user.id
        redirect_to root_path, notice: "Hello, #{user.first_name}."
      else
        flash.now.alert = "Password not valid."
        render :new
      end
    else
      flash.now.alert = "Email not valid."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Signed out."
  end

end

class UsersController < ApplicationController

  def create
      params.require(:username)
      params.require(:password)
      params.permit(:first_name, :last_name, :street_address, :city, :state, :postal_code, :country, :email_address)
      session[:username] = params[:username]
      session[:password] = params[:password]
      session[:first_name] = params[:first_name]
      session[:last_name] = params[:last_name]
      session[:street_address] = params[:street_address]
      session[:city] = params[:city]
      session[:state] = params[:state]
      session[:postal_code] = params[:postal_code]
      session[:country] = params[:country]
      session[:email_address] = params[:email_address]
  end

  def register
  end

  def login
      if params[:username] == session[:username] && params[:password] == session[:password]
          redirect_to('/users/welcome')
      elsif params[:username] == nil || params[:password] == nil
          " "
      elsif params[:username] != session[:username] && params[:password] != session[:password]
          flash.now[:alert] = "Your credentails are not valid"
      end
  end

  def welcome

  end

  def logout
  end

end

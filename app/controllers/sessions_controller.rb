class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] == nil
     session[:name] = params[:name]
     redirect_to '/'
   else
     redirect '/login'
   end
 end

 def destroy
  session.delete :name
end
end

class HomeController < ApplicationController
  def index
    if params[:username]
      session[:username] = params[:username]
      redirect_to messages_path
    end
  end
end

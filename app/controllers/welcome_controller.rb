class WelcomeController < ApplicationController
  def index
    
  end

  def create
    SendEmailWorker.perform_at(15.minutes, params[:email])
    redirect_to welcome_index_path
  end
end

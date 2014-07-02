class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def show
    @ideas= Ideas.find_by_id(params['id'])
  end
  
  def new
  end
  
  def create
    i= Ideas.new
    i.text= params['text']
    i.save
    redirect_to"/ideas/#{i.id}"
  end
  
  def edit
     @ideas= Ideas.find_by_id(params['id'])
  end
  
  def update
    i= Ideas.find_by_id(params['id'])
    i.text= params['text']
    i.save
    redirect_to"/ideas/#{i.id}"
  end
  
  def destroy
    i= Ideas.find_by_id(params['id'])
    i.destroy
    redirect_to "/ideas"
  end
  
  def index
    @ideas= Ideas.all
  end
end

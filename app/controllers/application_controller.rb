class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
  protect_from_forgery with: :exception
  def index
      @horses = Horse.order(params[:sort])
  end
end

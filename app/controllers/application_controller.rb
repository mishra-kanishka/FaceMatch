class ApplicationController < ActionController::Base
  protect_from_forgery

  	rescue_from CanCan::AccessDenied do |exception|
    redirect_to profile_path , :notice => exception.message
 end
end

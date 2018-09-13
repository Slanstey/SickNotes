class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_client

	def current_client
	  @current_client ||= Client.find(session[:client_id]) if session[:client_id] 
	end

	def require_client 
  		redirect_to '/login' unless current_client 
	end

	def require_admin
		redirect_to '/' unless current_client.admin?
	end
end

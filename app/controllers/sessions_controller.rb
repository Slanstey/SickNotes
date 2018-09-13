class SessionsController < ApplicationController
	def new
	end

	def create
		@client = Client.find_by_email(params[:session][:email])
		if @client && @client.authenticate(params[:session][:password])
			session[:client_id] = @client.id
		    redirect_to '/'
		else
		    redirect_to 'login'
	    end 
	end

	def destroy
		session[:client_id] = nil 
  		redirect_to '/' 
	end

end

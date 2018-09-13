class ClientsController < ApplicationController
	before_action :require_admin, only: [:index, :show]

	def index
		@clients = Client.all
	end

	def show
		@client = Client.find(params[:id]) 
  		@notes = @client.notes
	end

	def new
		@client = Client.new
	end

	def create
		@client = Client.new(client_params)
		if @client.save 
   			session[:client_id] = @client.id 
    		redirect_to '/' 
  		else 
    		redirect_to '/signup' 
  		end 
	end

	private

	def client_params
    	params.require(:client).permit(:company, :subscription_type, :logo_img, :email, :password)
  	end
end

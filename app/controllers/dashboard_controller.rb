class DashboardController < ApplicationController
	before_action :require_client, only: [:index, :show, :create, :note_params]

	def index
		@client = Client.find(session[:client_id])
		@notes = @client.notes


		@note = Note.new
	end

	def create
		@client = Client.find(session[:client_id])		
		@note = Client.new.notes.build(note_params)
		@note.client_id = @client.id	
		if @note.save 
   			redirect_to '/' 
  		else 
    		redirect_to '/dashboard' 
  		end 
	end

	private

	def note_params
    	params.require(:note).permit(:image)
  	end
end

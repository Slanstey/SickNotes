class NotesController < ApplicationController

	before_action :require_admin

	def index
		@notes = Note.all
	end

	def show
		@note = Note.find(params[:id])
	end

	def edit
		@note = Note.find(params[:id])
	end

	def update
		@note = Note.find(params[:id])
		if @note.update_attributes(note_params) 
   			redirect_to(:action => 'show', :id => @note.id) 
  		else 
    		render 'edit' 
  		end 
	end

	private
	def note_params
		params.require(:note).permit(:employee, :doctor, :is_fraudulent, :image)
	end
end

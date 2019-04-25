class NotesController < ApplicationController
    def index 
        @notes = Note.all
    end
    def new
        @notes = Note.all
        @note = Note.new
    end
    
    def create 
        @note = Note.new(note_params)
        
        if @note.save
            redirect_to notes_path
        else 
            render 'new'
        end
        
    end
    
    def show 
       @notes = Note.all
       @note = Note.find(params[:id]) 
    end
    
    def edit 
        @notes = Note.all
        @note = Note.find(params[:id])
    end
    
    def update 
        @note = Note.find(params[:id])
        if @note.update(note_params)
            redirect_to notes_path
        else
            render 'edit'
        end
    end
    
    def destroy
        @note = Note.find(params[:id])
        @note.destroy
        
        redirect_to notes_path
    end
    
end

private 
 def note_params
    params.require(:note).permit(:title, :text)
 end
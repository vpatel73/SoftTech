class NoteAppsController < ApplicationController
    def index 
        
    end
    def new
    end
    
    def create 
        @notes = NoteApp.new(notes_params)
        
        @notes.save
        redirect_to @notes
    end
    
end

private 
    def notes_params
        params.require(:notes).permit(:title, :text) 
    end
end

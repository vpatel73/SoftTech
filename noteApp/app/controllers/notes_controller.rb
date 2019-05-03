class NotesController < ApplicationController
    def index 
        @user = current_user
        @user_notes = Note.all
    end
    def new
        @user = current_user
        @user_notes = Note.all
        @user_note = Note.new
    end
    
    def create 
        @user = current_user
        
        @user_note = Note.new(note_params)
        
        @user_note = @user.notes.new(note_params)
        
        if @user_note.save
            redirect_to user_notes_path(@user_note)
        else 
            render 'new'
        end
        
    end
    
    def show 
        @user = current_user
        @user_notes = Note.all
        @user_note = Note.find(params[:id]) 
    end
    
    def edit 
        @user = current_user
        @user_notes = Note.all
        @user_note = Note.find(params[:id])
    end
    
    def update 
        @user = current_user
        @user_note = Note.find(params[:id])
        if @user_note.update(note_params)
            redirect_to user_notes_path
        else
            render 'edit'
        end
    end
    
    def destroy
        @user_notes = Note.all
        @user_note = Note.find(params[:id])
        @user_note.destroy
        
        redirect_to user_notes_path
    end
    
end

private 
 def note_params
    params.require(:note).permit(:title, :text)
 end
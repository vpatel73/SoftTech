class SessionsController < ApplicationController
    def new 
        
    end
    
    def create
        user = User.find_by(email: params[:session][:email].downcase)
        
        if user && user.authenticate(params[:session][:password])
           
           login(user)
           
           params[:session][:remember_me]  == '1' ? remember(user) : forget(user)
           
           redirect_to user_notes_path(user.id)
        else 
            flash[:danger] = "Invalid email or password"
            render 'new'
        end
         
    end
    
    def destroy
        logout  if sign_in?
        
        redirect_to login_path
        
    end
    
    
end

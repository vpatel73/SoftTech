class UsersController < ApplicationController
    def new
       @user = User.new 
    end
    
    def create 
        
        @user = User.new(user_params)
        
        if @user.save
            login(@user) #login after sign up
            flash[:success] = "Sign Up successfully"
            redirect_to user_notes_path(@user)
        else
            render 'new'
        end
        
    end
    
    def show 
        @user = current_user
        redirect_to user_notes_path(@user)
        
    end
end
private 
 def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
 end
 
 def find_user
    @user = User.find(params[:id]) 
 end
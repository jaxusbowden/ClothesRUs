class UserController < ApplicationController
    
    def login
        session[:login] = 1
        flash[:notice] = "You Logged In... Well Done!"
        redirect_to :controller => :items
    end
    
    
    def logout
        # session[:cart] = nil
        session[:login] = nil
        flash[:notice] = "Ok then see you next time!"
        redirect_to :controller => :items
    end
  
end

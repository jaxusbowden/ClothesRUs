class CartController < ApplicationController
  def index
    # pass the information to the view page of cart 
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end  
    
  end
  
  
  def add 
    # get the id of the product we want to add
    
    id = params[:id]
    
    # if the session is already there use that if not make a new session
    
    if session[:cart]
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end  
    
    
    # if the product already is in the cart increase the quantity by 1
    
    if cart[id] then
      cart[id] = cart[id] + 1
    else 
      cart[id] = 1 
    end
    
    redirect_to :action => :index
    
  end
  
  
  def remove
    
    id = params[:id]
    cart = session[:cart]
     if cart[id] == 1 then
       cart.delete id
     else
     cart[id] = cart[id] - 1
    end
    redirect_to :action => :index
    
  end
 
end



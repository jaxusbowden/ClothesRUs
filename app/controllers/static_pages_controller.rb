class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def contact

  end

  def about
  end
  
  def category
    
    catName = params[:title]
    @products = Product.where("category like ?", catName)
    
    
  end

end

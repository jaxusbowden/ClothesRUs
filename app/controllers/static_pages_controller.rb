class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def contact

  end

  def about
  end
  

end

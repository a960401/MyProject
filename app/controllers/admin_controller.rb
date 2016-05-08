class AdminController < ApplicationController
  def index
    @products=Product.where(category:'우산').first
    @products2 = Product.where(category:'재무계산기').first
  end
  
  def update_info
    p = Product.where(category:'우산').first
    p.total_amount=params[:total_num]
    p.lended_amount=params[:lended_num]
    p.save
    
    redirect_to "/admin/index"
  end
  
   def update_info_2
    p = Product.where(category:'재무계산기').first
    p.total_amount=params[:total_num_2]
    p.lended_amount=params[:lended_num_2]
    p.save
    
    redirect_to "/admin/index"
  end
  
  def new_info
    p = Product.new
    p.category = params[:category]
    p.total_amount=params[:new_total_num]
    p.lended_amount=params[:new_lended_num]
    p.save
    
    redirect_to "/admin/index"
  end
end

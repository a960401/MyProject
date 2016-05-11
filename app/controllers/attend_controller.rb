class AttendController < ApplicationController
  def result
  end

  def check
  end

  def ranking
  end

  def create
  end
  
  def make_round
    
    p=Round.new
    p.month=params[:month]
    p.week=params[:week]
    p.save
    redirect_to "/attend/index"
    
  end 
end

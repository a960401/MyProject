class AttendController < ApplicationController
  def result
    @round=Round.all
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
  
  def create_attend
    p=Attendance.find_or_create_by(member_id: params[:member].to_i, round_id: params[:round].to_i )
    p.status=params[:status]
    p.save
    # ajax는 re-direct하지 않음
    respond_to do |format|
      format.json{
        render json: {
        
        }
      }
    end

  end
  
  def delete
     p=Round.find(params[:id])
     p.destroy
     redirect_to "/attend/check"
  end
end

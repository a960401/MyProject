module ApplicationHelper
    def check_status(member_id, round_id)
        name = 'first'
        status = "0"
        a = Attendance.where(member_id: member_id, round_id: round_id).take
        unless a.nil?
            status = a.status
        end
        
        if status == "1"
            name = 'second'
        elsif status == "2"
            name = 'third'
        elsif status == "3"
            name = 'fourth'
        end
            
        return name    
    end
end

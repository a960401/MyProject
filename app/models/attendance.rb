class Attendance < ActiveRecord::Base
    belongs_to :member
    belongs_to :round
end

class Contest < ActiveRecord::Base
  attr_accessible :end_date, :present_to_win, :prize, :start_date, :sponsor_id, :meeting_id
  
  belongs_to :sponsors
  belongs_to :meetings
  #belongs_to :exhibitors, :through => :sponsors
  
  validates :start_date, :presence => true
  validates :end_date, :presence => true
  validates :prize, :presence => true
  
end

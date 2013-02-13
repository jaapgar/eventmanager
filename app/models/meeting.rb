class Meeting < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date, :venue_id, :sponsor_id, :meeting_id
  
  has_and_belongs_to_many :sponsors
  has_many :exhibitors, :through => :sponsors
  has_many :exhibits, :through => :sponsors, :source => :exhibitors
  belongs_to :venue
  has_many :contests
  
  
  validates :name, :presence => true
  validates :start_date, :presence => true
  validates :end_date, :presence => true
  
end

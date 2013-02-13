class Sponsor < ActiveRecord::Base
  attr_accessible :logo, :url
  
  belongs_to :exhibitor
  has_many :contests
  has_and_belongs_to_many :meetings
  
  validates :url, :presence => true
  validates :logo, :presence => true
  
  
end

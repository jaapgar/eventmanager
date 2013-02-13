class ExhibitiorCategory < ActiveRecord::Base
  attr_accessible :name
  
  has_many :exhibitors
  
  validates :name, :presence => true
  
  
end

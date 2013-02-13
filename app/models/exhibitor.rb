class Exhibitor < ActiveRecord::Base
  attr_accessible :description, :exhibitior_category_id, :name, :sponsor_id
  
  belongs_to :exhibitior_category
  belongs_to :sponsor
  has_many :meetings, :through => :sponsor
  
  validates :name, :presence => true
  validates :description, :presence => true
  validates :exhibitior_category_id, :presence => true

  
end

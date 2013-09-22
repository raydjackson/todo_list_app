class Item < ActiveRecord::Base
  attr_accessible :author_id, :name
  
  validates_presence_of :name
  
  belongs_to :author
end

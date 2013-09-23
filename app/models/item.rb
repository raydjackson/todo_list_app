class Item < ActiveRecord::Base
  attr_accessible :author_id, :name, :import_value
  
  validates_presence_of :name
  
  belongs_to :author
end

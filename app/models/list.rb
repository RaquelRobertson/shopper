class List < ActiveRecord::Base
  attr_accessible :name
  
  has_many :entries
  has_many :items, :through => :entries
end

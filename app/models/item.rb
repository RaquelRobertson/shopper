class Item < ActiveRecord::Base
  attr_accessible :name, :lowest_price, :last_price, :unit

  has_many :entries
  has_many :lists, :through => :entries
end

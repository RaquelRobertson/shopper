class Entry < ActiveRecord::Base
  attr_accessible :bought, :item_id, :list_id, :quantity
  
  belongs_to :list
  belongs_to :item
end

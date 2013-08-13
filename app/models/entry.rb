class Entry < ActiveRecord::Base
  attr_accessible :bought, :item_id, :list_id, :quantity, :item_attributes

  belongs_to :list
  belongs_to :item

  accepts_nested_attributes_for :item, allow_destroy: true, reject_if: :all_blank

end

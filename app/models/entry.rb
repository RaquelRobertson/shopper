class Entry < ActiveRecord::Base
  attr_accessible :bought, :item_id, :list_id, :quantity, :item_attributes

  belongs_to :list, :autosave => true
  belongs_to :item

  accepts_nested_attributes_for :item, allow_destroy: true, reject_if: :all_blank

  def autosave_associated_records_for_item
    if new_item = Item.find_by_name(item.name)
      self.item = new_item
    end
    self.item.save!
    self.item_id = self.item.id
  end

end

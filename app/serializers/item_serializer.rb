class ItemSerializer < ActiveModel::Serializer

  attributes :id, :name, :lowest_price, :last_price, :unit, :label, :value
  self.root = false

  def label
    object.name
  end

  def value
    object.name
  end
end

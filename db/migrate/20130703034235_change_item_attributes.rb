class ChangeItemAttributes < ActiveRecord::Migration
  def up  
    add_column :items, :lowest_price,    :integer
    add_column :items, :last_price, :integer
    add_column :items, :lowest_price_unit,    :integer
    add_column :items, :last_price_unit, :integer
    remove_column :items, :price
    remove_column :items, :size
    remove_column :items, :units
  end

  def down
    remove_column :items, :lowest_price
    remove_column :items, :last_price
    remove_column :items, :lowest_price_unit
    remove_column :items, :last_price_unit
    add_column :items, :price, :integer
    add_column :items, :size, :integer
    add_column :items, :units, :string
  end
end

class ChangeItemUnits < ActiveRecord::Migration
  def up
    remove_column :items, :lowest_price_unit
    remove_column :items, :last_price_unit    
    add_column :items, :unit, :string
  end

  def down
    add_column :items, :lowest_price_unit, :integer
    add_column :items, :last_price_unit, :integer  
    remove_column :items, :unit
  end
end

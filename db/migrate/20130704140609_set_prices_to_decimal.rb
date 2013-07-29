class SetPricesToDecimal < ActiveRecord::Migration
  def up
    remove_column :items, :lowest_price
    remove_column :items, :last_price
    add_column :items, :lowest_price,    :decimal
    add_column :items, :last_price, :decimal
  end

  def down  
    remove_column :items, :lowest_price
    remove_column :items, :last_price
    add_column :items, :lowest_price,    :integer
    add_column :items, :last_price, :integer
  end
end

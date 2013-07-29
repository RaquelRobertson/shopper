class SetPricePrecision < ActiveRecord::Migration
  def up
    remove_column :items, :lowest_price
    remove_column :items, :last_price
    add_column :items, :lowest_price,    :decimal, :precision => 8, :scale => 2
    add_column :items, :last_price, :decimal, :precision => 8, :scale => 2
  end

  def down 
    remove_column :items, :lowest_price
    remove_column :items, :last_price
    add_column :items, :lowest_price,    :decimal
    add_column :items, :last_price, :decimal
  end
end

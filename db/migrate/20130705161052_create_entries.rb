class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :list_id
      t.integer :item_id
      t.integer :quantity
      t.boolean :bought

      t.timestamps
    end
  end
end

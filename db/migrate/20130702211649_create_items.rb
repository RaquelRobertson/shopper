class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :units
      t.integer :size
      t.timestamps
    end
  end
end

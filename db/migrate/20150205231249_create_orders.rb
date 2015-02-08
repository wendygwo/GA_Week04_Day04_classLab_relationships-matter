class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :item
      t.integer :quantity
      t.string :address
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end

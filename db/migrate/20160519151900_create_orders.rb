class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :token
      t.references :customer, foreign_key: true

      t.timestamps
    end
    add_index :orders, :token, unique: true
  end
end

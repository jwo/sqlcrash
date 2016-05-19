class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :inventory
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :type, foreign_key: true, index: true, null: false
      t.decimal :price

      t.timestamps null: false
    end
  end
end

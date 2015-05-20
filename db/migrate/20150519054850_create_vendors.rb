class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.text :address
      t.string :phno

      t.timestamps null: false
    end
  end
end

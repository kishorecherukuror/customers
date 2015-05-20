class AddColumnToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :vendor_id, :integer
  end
end

class DropGarlicTable < ActiveRecord::Migration[5.0]
  def up
   drop_table :garlics
 end

 def down
   raise ActiveRecord::IrreversibleMigration
 end
end

class CreateWhiteOnions < ActiveRecord::Migration[5.0]
  def change
    create_table :white_onions do |t|
      t.string :name
      t.string :planted
      t.string :harvested
      t.boolean :active
      t.text :comments

      t.timestamps
    end
  end
end

class CreateGrapefruits < ActiveRecord::Migration[5.0]
  def change
    create_table :grapefruits do |t|
      t.string :name
      t.string :planted
      t.string :harvested
      t.boolean :active
      t.text :comments

      t.timestamps
    end
  end
end

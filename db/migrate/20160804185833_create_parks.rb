class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.text :journal

      t.timestamps null: false
    end
  end
end

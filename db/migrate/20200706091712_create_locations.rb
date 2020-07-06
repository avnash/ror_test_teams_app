class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.references :parent_location

      t.timestamps
    end
  end
end

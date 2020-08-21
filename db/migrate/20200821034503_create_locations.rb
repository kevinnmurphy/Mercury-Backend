class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.decimal :lat
      t.decimal :lon

      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end

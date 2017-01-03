class CreateThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :themes do |t|
      t.string :name, index: true, null: false
      t.integer :score, index: true, null: false

      t.timestamps
    end
  end
end

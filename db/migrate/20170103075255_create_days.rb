class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.date :date, index: true
      t.text :desc
      t.references :user
      t.references :theme

      t.timestamps
    end
  end
end

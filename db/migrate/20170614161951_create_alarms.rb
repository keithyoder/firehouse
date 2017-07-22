class CreateAlarms < ActiveRecord::Migration[5.0]
  def change
    create_table :alarms do |t|
      t.references :department, foreign_key: true
      t.date :date
      t.string :location
      t.datetime :received
      t.datetime :ten_8
      t.datetime :ten_2
      t.datetime :ten_7
      t.integer :miles

      t.timestamps
    end
  end
end

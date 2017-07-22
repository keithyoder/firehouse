class CreateApparatus < ActiveRecord::Migration[5.0]
  def change
    create_table :apparatus do |t|
      t.references :department, foreign_key: true
      t.integer :code
      t.string :name
      t.boolean :current

      t.timestamps
    end
  end
end

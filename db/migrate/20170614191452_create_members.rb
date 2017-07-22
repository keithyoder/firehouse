class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.references :department, foreign_key: true
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.references :state, foreign_key: true
      t.string :zip
      t.string :home_phone
      t.string :cell_phone
      t.string :dept_cell_phone
      t.string :social_security
      t.string :drivers_license
      t.date :birth_date
      t.references :bloodtype, foreign_key: true
      t.string :email
      t.boolean :alarm_roster
      t.boolean :attendance_roster
      t.boolean :tax_credit

      t.timestamps
    end
  end
end

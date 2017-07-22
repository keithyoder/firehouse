class CreateMemberTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :member_types do |t|
      t.references :department, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end

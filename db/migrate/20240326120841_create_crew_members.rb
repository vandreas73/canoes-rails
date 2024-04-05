class CreateCrewMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :crew_members do |t|
      t.string :name
      t.integer :age
      t.references :canoe, null: false, foreign_key: true

      t.timestamps
    end
  end
end

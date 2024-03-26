class CreateCompetitions < ActiveRecord::Migration[7.1]
  def change
    create_table :competitions do |t|
      t.string :name
      t.date :date
      t.references :canoe, null: false, foreign_key: true

      t.timestamps
    end
  end
end

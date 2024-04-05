class CreateCanoes < ActiveRecord::Migration[7.1]
  def change
    create_table :canoes do |t|
      t.string :name
      t.integer :max_crew

      t.timestamps
    end
  end
end

class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :issue
      t.date :date
      t.integer :hour
      t.text :description

      t.timestamps
    end
  end
end

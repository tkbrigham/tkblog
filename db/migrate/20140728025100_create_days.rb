class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :day_num
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end

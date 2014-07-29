class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :day
      t.string :location
      t.string :description
      t.date :date
      t.string :uri

      t.timestamps
    end
  end
end

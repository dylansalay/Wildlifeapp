class AddNewColumn < ActiveRecord::Migration[5.2]
  def change
      add_column :sightings, :start_date, :date
      add_column :sightings, :end_date, :date
  end
end

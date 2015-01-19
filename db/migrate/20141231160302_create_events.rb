class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :venue_name
      t.integer :seats_number
      t.integer :owner_id
      t.date :date

      t.timestamps
    end
  end
end

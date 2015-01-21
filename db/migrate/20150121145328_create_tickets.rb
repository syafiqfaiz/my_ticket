class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :event_id
      t.integer :participant_id
      t.string :token

      t.timestamps
    end
  end
end

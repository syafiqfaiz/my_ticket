class AddParticipantIdToEvent < ActiveRecord::Migration
  def change
  	add_column :events, :participant_id, :text, array:true, default: []
  end
end

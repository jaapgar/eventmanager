class AddSponsorIdToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :sponsor_id, :integer
  end
end

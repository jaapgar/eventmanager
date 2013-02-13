class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :prize
      t.boolean :present_to_win, :default=>false
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end

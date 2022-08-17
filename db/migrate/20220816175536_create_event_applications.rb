class CreateEventApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :event_applications do |t|
      t.string :dev_email
      t.string :dev_name
      t.string :game_name
      t.boolean :multiplayer
      t.string :game_description
      t.string :why_playtest

      t.timestamps
    end
  end
end

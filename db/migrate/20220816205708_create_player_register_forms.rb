class CreatePlayerRegisterForms < ActiveRecord::Migration[6.0]
  def change
    create_table :player_register_forms do |t|
      t.string :player_email
      t.string :player_name

      t.timestamps
    end
  end
end

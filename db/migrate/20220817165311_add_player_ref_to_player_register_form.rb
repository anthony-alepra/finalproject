class AddPlayerRefToPlayerRegisterForm < ActiveRecord::Migration[6.0]
  def change
    add_reference :player_register_forms, :player, foreign_key: true
  end
end

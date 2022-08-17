class AddEventRefToGames < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :game, foreign_key: true
  end
end

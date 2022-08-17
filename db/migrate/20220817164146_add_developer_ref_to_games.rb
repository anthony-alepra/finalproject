class AddDeveloperRefToGames < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :developer, foreign_key: true
  end
end

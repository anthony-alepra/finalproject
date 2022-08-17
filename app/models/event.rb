# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  time       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :integer
#
# Indexes
#
#  index_events_on_game_id  (game_id)
#
# Foreign Keys
#
#  game_id  (game_id => games.id)
#
class Event < ApplicationRecord
    belongs_to :game
    has_one :event_application
end

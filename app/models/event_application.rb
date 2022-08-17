# == Schema Information
#
# Table name: event_applications
#
#  id               :integer          not null, primary key
#  dev_email        :string
#  dev_name         :string
#  game_description :string
#  game_name        :string
#  multiplayer      :boolean
#  why_playtest     :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  event_id         :integer
#  game_id          :integer
#
# Indexes
#
#  index_event_applications_on_event_id  (event_id)
#  index_event_applications_on_game_id   (game_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#  game_id   (game_id => games.id)
#
class EventApplication < ApplicationRecord
    has_one :event
    belongs_to :game
end

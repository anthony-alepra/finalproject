# == Schema Information
#
# Table name: games
#
#  id           :integer          not null, primary key
#  description  :string
#  multiplayer  :boolean
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  developer_id :integer
#
# Indexes
#
#  index_games_on_developer_id  (developer_id)
#
# Foreign Keys
#
#  developer_id  (developer_id => developers.id)
#
class Game < ApplicationRecord
    belongs_to :developer
    has_many :events
    has_many :event_applications
end

# == Schema Information
#
# Table name: player_register_forms
#
#  id           :integer          not null, primary key
#  player_email :string
#  player_name  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  player_id    :integer
#
# Indexes
#
#  index_player_register_forms_on_player_id  (player_id)
#
# Foreign Keys
#
#  player_id  (player_id => players.id)
#
class PlayerRegisterForm < ApplicationRecord
    has_one :player
end

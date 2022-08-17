# == Schema Information
#
# Table name: developers
#
#  id         :integer          not null, primary key
#  email      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Developer < ApplicationRecord
    has_many :games
end

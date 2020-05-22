class Game < ApplicationRecord
  has_many :devices
  validates :game_name, presence: true
end

class Game < ApplicationRecord
  has_many :devices, :dependent => :delete_all
  validates :game_name, presence: true
end

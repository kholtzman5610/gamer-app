class Device < ApplicationRecord
  belongs_to :game
  validates_presence_of :game
  validates :device_name, presence:true
end

require 'faker'

FactoryBot.define do
  factory :game do |f|
    f.game_name { Faker::Game.title }
  end
end

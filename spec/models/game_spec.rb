require 'rails_helper'

RSpec.describe Game, type: :model do
  subject { Game.new(game_name: "Jack" )}

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a game_name" do
    subject.game_name=nil
    expect(subject).to_not be_valid
  end
end

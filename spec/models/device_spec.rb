require 'rails_helper'

RSpec.describe Device, type: :model do
  subject { Device.new(device_name: "gears", game: FactoryBot.create(:game))}

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a device_name" do
    subject.device_name=nil
    expect(subject).to_not be_valid
  end
    it "is not valid without game_id" do
      subject.game_id=nil
      expect(subject).to_not be_valid
    end
    it "is not valid with an invalid game_id" do
      subject.game_id=5555
      expect(subject).to_not be_valid
    end
end

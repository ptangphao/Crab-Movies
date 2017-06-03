require 'rails_helper'

describe ActorMovie do
  describe "has associations" do
    it { is_expected.to belong_to(:movie)}
    it { is_expected.to belong_to(:actor)}
  end
end



require 'spec_helper'

module DopaCore
  describe Challenge do
    describe "Attributes" do
      let(:challenge) { build(:dopa_core_challenge) }

      it "has a name" do
        expect(challenge.name).to eq "challenge name"
      end

      it "has required_progress_points" do
        expect(challenge.required_progress_points).to eq 10
      end
    end
  end
end

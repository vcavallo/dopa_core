require 'spec_helper'

module DopaCore
  describe ActionType do
    describe "Attributes" do
      let(:action_type) { build(:dopa_core_action_type) }

      it "has a name" do
        expect(action_type.name).to eq "action type name"
      end
    end
  end
end

require 'spec_helper'

module DopaCore
  describe Action do

      describe "Attributes" do
        let(:action) { build(:dopa_core_action) }

        it "has a name" do
          expect(action.name).to eq "action name"
        end
      end

      describe "Associations" do
        it "belongs to an ActionType" do
          action_with_type = create(:action_with_type)

          expect(action_with_type.action_type).to be_a_kind_of(ActionType)
        end
      end

  end
end

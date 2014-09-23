require 'spec_helper'

module DopaCore
  describe Action do

      describe "Attributes" do
        let(:action) { build(:dopa_core_action) }

        it "has a name" do
          expect(action.name).to eq "action name"
        end

        it "has a point_value" do
          expect(action.point_value).to eq 10
        end

        it "has a progress_value" do
          expect(action.progress_value).to eq 1
        end

        it "has a trigger" do
          pending "how will this work?"
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

require 'spec_helper'

module DopaCore
  describe ActionType do
    describe "Attributes" do
      let(:action_type) { build(:dopa_core_action_type) }

      it "has a name" do
        expect(action_type.name).to eq "action type name"
      end

      it "has a category" do
        expect(action_type.category).to eq "action type category"
      end

      # it "has a progress_flavor" do
      #   expect(action_type.progress_flavor).to eq ""
      # end
    end

    describe "Associations" do
      it "belongs to a Challenge" do
        action_type_belonging_to_challenge = create(:action_type_with_challenge)

        expect(action_type_belonging_to_challenge.challenge).to be_a_kind_of(Challenge)
      end
    end
  end
end

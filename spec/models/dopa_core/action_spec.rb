require 'spec_helper'

module DopaCore
  describe Action do

      describe "Attributes" do
        let(:action) { build(:dopa_core_action) }

        it "has a name" do
          expect(action.name).to eq "action name"
        end
      end

  end
end

module DopaCore
  class PlayerAction < ActiveRecord::Base
    belongs_to :player
    belongs_to :action
  end
end

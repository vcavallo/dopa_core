module DopaCore
  class PlayerAction < ActiveRecord::Base
    belongs_to :player, class_name: DopaCore.player_class
    belongs_to :action, class_name: DopaCore.action_class
  end
end

module DopaCore
  class PlayerAction < ActiveRecord::Base
    belongs_to :player, class_name: DopaCore.player_class
    belongs_to :action, class_name: DopaCore.action_class

    after_create :set_points_earned

    # change hook to a method that will EITHER set points earned or rely on some
    # argument to set custom points. remove that from Player
    def set_points_earned
      if !self.action.has_custom_points?
        self.update(points_earned: self.action.point_value)
      end
    end
  end
end

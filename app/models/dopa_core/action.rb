module DopaCore
  class Action < ActiveRecord::Base
    has_many :player_actions
  end
end

module DopaCore
  class Player < ActiveRecord::Base
    has_many :player_actions
  end
end

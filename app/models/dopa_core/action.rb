module DopaCore
  class Action < ActiveRecord::Base
    has_many :player_actions
    belongs_to :action_type
  end
end

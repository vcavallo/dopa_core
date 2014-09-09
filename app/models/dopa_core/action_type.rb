module DopaCore
  class ActionType < ActiveRecord::Base
    has_many :actions
  end
end

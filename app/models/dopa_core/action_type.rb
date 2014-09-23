module DopaCore
  class ActionType < ActiveRecord::Base
    has_many :actions
    belongs_to :challenge
  end
end

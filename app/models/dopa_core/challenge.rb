module DopaCore
  class Challenge < ActiveRecord::Base
    has_many :action_types
  end
end

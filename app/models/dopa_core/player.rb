module DopaCore
  class Player < ActiveRecord::Base
    has_many :player_actions
    validates_presence_of :name
    validates :email, presence: true, uniqueness: true

    def testing_engine
      puts "engine method"
    end

    def add_action(some_action)
      self.player_actions.create(action: some_action)
    end

  end
end

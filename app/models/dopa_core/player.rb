module DopaCore
  class Player < ActiveRecord::Base
    has_many :player_actions
    validates_presence_of :name
    validates :email, presence: true, uniqueness: true

    def testing_engine
      puts "engine method"
    end
  end
end

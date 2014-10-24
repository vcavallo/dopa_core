module DopaCore
  class Player < ActiveRecord::Base
    belongs_to :user, class_name: DopaCore.user_class
    has_many :player_actions

    # validates_presence_of :name
    # validates :email, presence: true, uniqueness: true

    def testing_engine
      puts "engine method"
    end

    def add_action(some_action)
      self.player_actions.create(action: some_action)
    end

    def add_custom_points_action(some_custom_action, custom_points)
      #TODO: this is terribleh
      temp_action = some_custom_action.dup
      action_to_update = self.player_actions.new(action: temp_action)
      action_to_update.points_earned = custom_points
      self.save
      temp_action.destroy
    end

    def add_actions(array_of_actions)
      array_of_actions.each do |action|
        self.add_action(action)
      end
    end

    def total_score
      self.player_actions.sum(:points_earned)
    end
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dopa_core_player_action, :class => DopaCore::PlayerAction do
    #player_id 1
    #action_id 1
    points_earned 100
  end

  factory :action_with_player, :class => DopaCore::PlayerAction do
    association :player, factory: :player_with_action, strategy: :build
    association :action, factory: :action_belonging_to_player, strategy: :build
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dopa_core_player, :class => DopaCore::Player do
    name "player one"
  end

  factory :player_with_action, :class => DopaCore::Player do
    name "action bronson"
  end

  factory :player_for_leaderboard, :class => DopaCore::Player do
    name "Generic LeaderboardGuy"
  end
end

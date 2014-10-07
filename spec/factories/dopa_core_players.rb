# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dopa_core_player, :class => DopaCore::Player do
    name "player one"
    email "player@one.com"
  end

  factory :player_with_action, :class => DopaCore::Player do
    email "action@bronson.com"
    name "action bronson"
  end
end

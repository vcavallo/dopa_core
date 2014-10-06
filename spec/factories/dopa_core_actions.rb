# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dopa_core_action, :class => DopaCore::Action do
    name "action name"
    point_value 10
    progress_value 1
  end

  factory :action_belonging_to_player, :class => DopaCore::Action do
    name "someone has me"
    point_value 100
  end

  factory :action_with_type, :class => DopaCore::Action do
    association :action_type, factory: :action_type_with_actions, strategy: :build
    name "i have a type"
  end
end

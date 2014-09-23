# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dopa_core_action_type, :class => DopaCore::ActionType do
    name "action type name"
    category "action type category"
  end

  factory :action_type_with_actions, :class => DopaCore::ActionType do
    name "i have actions"
  end

  factory :action_type_with_challenge, :class => DopaCore::ActionType do
    name "i belong to a challenge"
    association :challenge, factory: :challenge_with_actions, strategy: :build
  end
end

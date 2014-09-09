# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dopa_core_action_type, :class => DopaCore::ActionType do
    name "action type name"
  end

  factory :action_type_with_actions, :class => DopaCore::ActionType do
    name "i have actions"
  end
end

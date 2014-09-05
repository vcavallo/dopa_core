# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dopa_core_action, :class => DopaCore::Action do
    name "action name"
  end

  factory :action_belonging_to_player, :class => DopaCore::Action do
    name "someone has me"
  end
end

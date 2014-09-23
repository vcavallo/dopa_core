# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dopa_core_challenge, :class => DopaCore::Challenge do
    name "challenge name"
    required_progress_points 10
  end

  factory :challenge_with_actions, :class => DopaCore::Challenge do
    name "challenge with actions"
  end
end

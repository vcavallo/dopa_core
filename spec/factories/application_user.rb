# this doesn't work for the same reason as the commented-out association test in
# player_spec.rb
#
FactoryGirl.define do
  factory :user, class: DopaCore.user_class do
    email "player@one.com"
  end
end

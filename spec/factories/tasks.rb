# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    description { Faker::Lorem.sentence }
    list { create(:list) }
    user { create(:user) }
  end
end

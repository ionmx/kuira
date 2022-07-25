# frozen_string_literal: true

FactoryBot.define do
  factory :list do
    title { Faker::Lorem.sentence }
    project { create(:project) }
    user { create(:user) }
  end
end

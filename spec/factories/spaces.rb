# frozen_string_literal: true

FactoryBot.define do
  factory :space do
    title { Faker::Lorem.sentence }
    user { create(:user) }
  end
end

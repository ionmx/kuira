# frozen_string_literal: true

FactoryBot.define do
  factory :space_member do
    space { create(:space) }
    user { create(:user) }
  end
end

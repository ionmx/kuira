# frozen_string_literal: true

FactoryBot.define do
  factory :space do
    title { 'MyString' }
    user { create(:user) }
  end
end

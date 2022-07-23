# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(User, type: :model) do
  describe 'validations' do
    describe 'name' do
      it 'must be present' do
        user = described_class.new(name: nil, email: Faker::Internet.email, password: Faker::Internet.password)
        expect(user).to be_invalid
      end
    end

    describe 'email' do
      it 'must be present' do
        user = described_class.new(name: Faker::Name, email: nil, password: Faker::Internet.password)
        expect(user).to be_invalid
      end

      it 'must be valid email' do
        user = described_class.new(name: Faker::Name, email: 'invalid_email', password: Faker::Internet.password)
        expect(user).to be_invalid
      end
    end
  end
end

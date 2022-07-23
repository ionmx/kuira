# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(User, type: :model) do
  describe 'validations' do
    describe 'name' do
      it { is_expected.to validate_presence_of(:name) }
    end

    describe 'email' do
      subject { create(:user) }

      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity }
      it { is_expected.to allow_value(Faker::Internet.email).for(:email) }
      it { is_expected.not_to(allow_value('invalid_email').for(:email)) }
    end
  end
end

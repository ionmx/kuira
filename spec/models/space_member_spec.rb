# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(SpaceMember, type: :model) do
  describe 'validations' do
    describe 'space' do
      it { is_expected.to belong_to(:space) }
    end

    describe 'user' do
      it { is_expected.to belong_to(:user) }
    end
  end
end

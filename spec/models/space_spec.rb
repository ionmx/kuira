# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(Space, type: :model) do
  describe 'validations' do
    describe 'title' do
      it { is_expected.to validate_presence_of(:title) }
    end

    describe 'user' do
      it { is_expected.to validate_presence_of(:user) }
    end
  end
end

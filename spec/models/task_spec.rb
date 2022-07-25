# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(Task, type: :model) do
  describe 'validations' do
    describe 'description' do
      it { is_expected.to validate_presence_of(:description) }
    end

    describe 'list' do
      it { is_expected.to belong_to(:list) }
    end

    describe 'user' do
      it { is_expected.to belong_to(:user) }
    end
  end
end

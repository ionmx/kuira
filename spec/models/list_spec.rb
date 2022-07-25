# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(List, type: :model) do
  describe 'validations' do
    describe 'title' do
      it { is_expected.to validate_presence_of(:title) }
    end

    describe 'project' do
      it { is_expected.to belong_to(:project) }
    end

    describe 'user' do
      it { is_expected.to belong_to(:user) }
    end
  end
end

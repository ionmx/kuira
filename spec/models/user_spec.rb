# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(User, type: :model) do
  it 'name should be present' do
    user = described_class.new(name: '', email: 'MyString')
    expect(user).to be_invalid
  end

  it 'email should be present' do
    user = described_class.new(name: 'MyString', email: '')
    expect(user).to be_invalid
  end
end

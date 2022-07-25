# frozen_string_literal: true

class SpaceMember < ApplicationRecord
  belongs_to :space
  belongs_to :user
end

# frozen_string_literal: true

class Space < ApplicationRecord
  belongs_to :user
  has_many :members, through: :space_members
  has_many :space_members, dependent: :destroy

  validates_associated :space_members

  validates :title, presence: true
end

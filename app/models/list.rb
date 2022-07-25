# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_many :tasks, dependent: :destroy

  validates :title, presence: true
end

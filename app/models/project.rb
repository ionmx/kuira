# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :user
  has_many :lists, dependent: :destroy
  validates :title, presence: true
end

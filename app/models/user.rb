# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: Devise.email_regexp }
  has_many :projects, dependent: :destroy
  has_many :spaces, dependent: :destroy
  has_many :space_members, dependent: :destroy
  has_many :lists, dependent: :destroy
  has_many :tasks, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end

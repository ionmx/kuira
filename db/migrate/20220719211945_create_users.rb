# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table(:users, comment: 'Table of users') do |t|
      t.string(:name, comment: 'User full name')
      t.string(:email, comment: 'User email')

      t.timestamps
    end
  end
end

require 'rails_helper'

RSpec.describe 'Login', type: :system do
  let(:user) { create(:user) }

  it 'can login' do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    expect(page).to have_content('Signed in successfully')
  end
end

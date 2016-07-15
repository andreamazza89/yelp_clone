require 'rails_helper'

feature 'User sing-up-in-out features' do

  context 'when user is not signed in' do

    scenario 'page has sign up and sign in link' do
      visit('/')
      expect(page).to have_link('Sign in')
      expect(page).to have_link('Sign up')
    end

    scenario 'page does not have sign out link' do
      visit('/')
      expect(page).not_to have_link('Sign out')
    end
  end

  context 'when user is signed in' do

    before do
      visit('/')
      click_link('Sign up')
      fill_in('Email', with: 'test@example.com')
      fill_in('Password', with: 'testtest')
      fill_in('Password confirmation', with: 'testtest')
      click_button('Sign up')
    end

    scenario 'page does not have sign up and sign in link' do
      visit('/')
      expect(page).not_to have_link('Sign in')
      expect(page).not_to have_link('Sign up')
    end

    scenario 'page has sign out link' do
      visit('/')
      expect(page).to have_link('Sign out')
    end
  end

end

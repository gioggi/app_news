require "rails_helper"

RSpec.feature "Create article", :type => :feature do

    scenario 'log in and create' do
      take_user_data
      login
      create_article
    end

    def take_user_data
      @user = create(:user)
    end

    def login
      visit new_user_session_path
      fill_in 'user[email]', with: @user.email
      fill_in 'user[password]', with: @user.password
      click_button 'Sign in'
      expect(page).to have_css('span', text: 'Logged', visible: :all)
    end

    def create_article
      visit new_article_path
      fill_in 'article[title]', with: 'Magic Article'
      fill_in 'article[text]', with: 'This is a magic test'
      click_button 'Submit'
      expect(page).to have_css('div', text: 'Article was successfully created.', visible: :all)
    end
end

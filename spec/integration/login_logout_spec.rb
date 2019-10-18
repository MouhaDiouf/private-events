require 'rails_helper'

feature 'Testing the login and logout functionalities' do
    let(:user) { create(:user) }
    scenario "User can login" do
        visit login_path
        login user.email
        expect(page).to have_content("Welcome #{user.username} !")

    end

    scenario "User can logout" do
        visit login_path 
        login user.email
        click_link  'Logout'
        expect(page).to have_content("Welcome to our app you can use the button below to create an account")
    end


    def login(email)
        visit login_path
        fill_in 'Email', with: email
        click_button 'Login'
    end



  



end 
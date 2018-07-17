require 'rails_helper'

RSpec.feature "Login", type: :feature do
  scenario "user can visit login page" do
    visit root_path
    expect(page).to have_content('Log in')
  end
end

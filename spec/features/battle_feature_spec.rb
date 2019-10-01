# require 'spec_helper'

feature 'Testing infrastructure' do

  scenario "should display the Homepage" do
    visit("/")
    expect(page).to have_content('Testing infrastructure working!')
  end

end
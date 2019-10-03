feature 'Testing infrastructure' do
  scenario "should display the Homepage" do
    visit("/test")
    expect(page).to have_content('Testing infrastructure working!')
  end
end

feature 'Testing infrastructure' do
  scenario "should display the Homepage" do
    visit("/test")
    expect(page).to have_content('Testing infrastructure working!')
  end
end

feature 'entering names' do
  scenario 'should dispaly the player names form' do
    visit('/')
    name1 = "Kevin"
    name2 = "Nabille"
    fill_in "player1", with: name1
    fill_in "player2", with: name2
    click_button("Battle!")
    expect(page).to have_content("Player 1: #{name1}\nPlayer 2: #{name2}")
  end
end

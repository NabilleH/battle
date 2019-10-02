feature 'Testing infrastructure' do
  scenario "should display the Homepage" do
    visit("/test")
    expect(page).to have_content('Testing infrastructure working!')
  end
end

feature 'entering names' do
  scenario 'should dispaly the player names form' do
    sign_in_and_play
    expect(page).to have_content("Player 1: Yaz\nPlayer 2: Nabs")
  end
end

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Nabs: 60HP'
  end
end

feature 'Win a battle' do
  scenario 'Attack player 2 and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Yaz attacked Nabs'
  end
end

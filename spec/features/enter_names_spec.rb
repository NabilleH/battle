feature 'entering names' do
  scenario 'should dispaly the player names form' do
    sign_in_and_play
    expect(page).to have_content("Player 1: Yaz\nPlayer 2: Nabs")
  end
end

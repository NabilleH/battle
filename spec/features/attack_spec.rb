feature 'Win a battle' do
  scenario 'Attack player 2 and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Yaz attacked Nabs'
  end
end

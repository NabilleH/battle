def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Yaz'
  fill_in :player2, with: 'Nabs'
  click_button 'Battle!'
end

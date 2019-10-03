def sign_in_and_play
  visit('/')
  fill_in :player1_input, with: 'Yaz'
  fill_in :player2_input, with: 'Nabs'
  click_button 'Battle!'
end

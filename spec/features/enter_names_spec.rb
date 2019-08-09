def sign_in_and_play
    visit('/')
    fill_in('Player_1_name', with: 'Mario')
    fill_in('Player_2_name', with: 'Guillaume')
    click_on("Submit")
end
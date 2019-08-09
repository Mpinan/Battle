feature 'Players' do
  before do
    sign_in_and_play
  end

  feature 'names' do
    scenario 'Can expect players to fill in their names' do
      expect(page).to have_content "Mario"
      expect(page).to have_content "vs."
      expect(page).to have_content "Guillaume"
    end
  end

  feature 'hit points' do
    scenario 'Can expect players to see hit points' do
      expect(page).to have_content "HP: 50", "HP: 50"
    end
  end

  feature 'attack' do
    scenario 'Player 1 attakcs Player 2 and sends confirmation' do
      click_on "Player 1 attack"
      expect(page).to have_content "Mario attacked Guillaume"
    end
  end
end
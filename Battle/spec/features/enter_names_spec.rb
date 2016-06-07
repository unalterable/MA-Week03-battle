require 'capybara'

include Capybara::DSL

feature 'Enter names' do
	scenario 'works' do
		visit '/'
		fill_in("player1", with: 'Oli')
		fill_in("player2", with: 'Faisal')
		click_button('Start')
		expect(page).to have_content('Oli')
		expect(page).to have_content('Faisal')
	end 
end
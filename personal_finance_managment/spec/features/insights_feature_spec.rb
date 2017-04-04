require 'rails_helper'
require 'web_helper'
require 'pry'

feature 'insights' do
  context 'insights' do
    scenario 'should have a branded header' do
      visit '/transactions/insights'
      expect(page).to have_content 'Team Red Bank'
      expect(page).to have_selector("nav")
    end

    scenario 'should return total spent' do
      add_transaction_history
      visit '/transactions/insights'
      expect(page).to have_content 'Total: £285.5'
    end

    scenario 'can see total spent on specific days' do
      add_transaction_history
      visit '/transactions/insights'
      fill_in 'date', with: '03/04/2017'
      click_button 'Filter by Date'
      within(:css, 'div#insights-display') do
        expect(page).to have_content('£12.5')
      end
    end
  end


end

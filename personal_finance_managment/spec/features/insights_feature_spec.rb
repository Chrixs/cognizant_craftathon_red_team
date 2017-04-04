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
      expect(page).to have_content 'Total: £285.50'
    end

    scenario 'should return Groceries total spent' do
      add_transaction_history
      visit '/transactions/show'
      expect(page).to have_content 'Groceries Total: £55.00'
    end

    scenario 'should return Bills total spent' do
      add_transaction_history
      visit '/transactions/show'
      expect(page).to have_content 'Bills Total: £42.50'
    end

    scenario 'should return Transport total spent' do
      add_transaction_history
      visit '/transactions/show'
      expect(page).to have_content 'Transport Total: £35.00'
    end

    scenario 'should return Shopping total spent' do
      add_transaction_history
      visit '/transactions/show'
      expect(page).to have_content 'Shopping Total: £64.00'
    end

    scenario 'should return Shopping total spent' do
      add_transaction_history
      visit '/transactions/show'
      expect(page).to have_content 'Eat & Drink Out Total: £89.00'
    end

    scenario 'can see total spent on specific days' do
      add_transaction_history
      visit '/transactions/insights'
      fill_in 'date', with: '03/04/2017'
      click_button 'Filter by Date'
      within(:css, 'div#insights-display') do
        expect(page).to have_content('£12.50')
      end

    end
  end


end

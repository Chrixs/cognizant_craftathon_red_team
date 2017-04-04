require 'rails_helper'
require 'web_helper'
require 'pry'

feature 'insights' do
  context 'insights' do
    scenario 'should have a branded header' do
      visit '/transactions/show'
      expect(page).to have_content 'Team Red Bank'
      expect(page).to have_selector("nav")
    end

    scenario 'should return total spent' do
      add_transaction_history
      visit '/transactions/show'
      expect(page).to have_content 'Total: £285.5'
    end

    scenario 'should return Groceries total spent' do
      add_transaction_history
      visit '/transactions/show'
      expect(page).to have_content 'Groceries Total: £55.0'
    end

    scenario 'should return Bills total spent' do
      add_transaction_history
      visit '/transactions/show'
      expect(page).to have_content 'Bills Total: £42.5'
    end

    scenario 'should return Transport total spent' do
      add_transaction_history
      visit '/transactions/show'
      expect(page).to have_content 'Transport Total: £35.0'
    end

    scenario 'should return Shopping total spent' do
      add_transaction_history
      visit '/transactions/show'
      expect(page).to have_content 'Shopping Total: £64.0'
    end

    scenario 'should return Shopping total spent' do
      add_transaction_history
      visit '/transactions/show'
      expect(page).to have_content 'Eat & Drink Out Total: £89.0'
    end
  end
end

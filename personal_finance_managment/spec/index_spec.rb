require 'rails_helper'

feature 'transactions' do
  context 'transactions' do
    scenario 'should have no transactions' do
      visit '/transactions'
      expect(page).to have_content 'No transactions yet'
    end
  end
end

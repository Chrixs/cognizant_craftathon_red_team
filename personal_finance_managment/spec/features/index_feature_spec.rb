require 'rails_helper'

feature 'transactions' do
  context 'transactions' do
    scenario 'should have a branded header' do
      visit '/transactions'
      expect(page).to have_content 'Team Red Bank'
      expect(page).to have_selector("nav")
    end
    scenario 'should have no transactions' do
      visit '/transactions'
      expect(page).to have_content 'No transactions yet'
    end
    scenario 'link to insights' do
      visit '/transactions'
      click_link 'Insights'
      expect(current_path).to eq '/transactions/insights'
    end
  end
end

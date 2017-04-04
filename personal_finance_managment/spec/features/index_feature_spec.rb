require 'rails_helper'
require 'web_helper'

feature 'transactions' do
  context 'transactions' do
    scenario 'should have a branded header' do
      visit '/transactions'
      expect(page).to have_content 'Team Red Bank'
      expect(page).to have_selector("nav")
    end
    scenario 'should display empty History of Transactions' do
      visit '/transactions'
      expect(page).to have_content 'Transactions Company Amount Date Category'
    end

    scenario 'displays History of Transactions' do
      add_transaction_history
      visit'/transactions'
      expect(page).to have_content 'British Gas £12.5 2017-04-03 Bills'
    end
    scenario 'link to insights' do
      visit '/transactions'
      click_link 'Insights'
      expect(current_path).to eq '/transactions/insights'
    end
  end
end

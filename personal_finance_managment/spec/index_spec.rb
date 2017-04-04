require 'rails_helper'
require 'web_helpers'

feature 'transactions' do
  context 'transactions' do
    scenario 'should display empty History of Transactions' do
      visit '/transactions'
      expect(page).to have_content 'Transactions Company Amount Date Category'
    end

    scenario 'displays History of Transactions' do
      add_transaction_history
      visit'/transactions'
      expect(page).to have_content 'British Gas £12.5 2017-04-03 Bills'
    end

  end
end

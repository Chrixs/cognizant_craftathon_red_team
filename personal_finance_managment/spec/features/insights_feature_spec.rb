require 'rails_helper'

feature 'insights' do
  context 'insights' do
    scenario 'should have a branded header' do
      visit '/transactions/insights'
      expect(page).to have_content 'Team Red Bank'
      expect(page).to have_selector("nav")
    end
  end
end

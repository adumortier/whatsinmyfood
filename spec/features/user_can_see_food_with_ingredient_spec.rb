require 'rails_helper'

RSpec.describe "As a user " , type: :feature do 

  describe "When I search an ingredient" do 

    scenario "I see a list of food with that ingredient and the nunber of search results" do 

      visit '/'
      fill_in :q, with: 'sweet potatoes'
      click_on 'Search'

      expect(page).to have_content('50 results')
      within(first('.food')) do
          expect(page).to have_css('.gtin_upc_code')
          expect(page).to have_css('.description')
          expect(page).to have_css('.brand_owner')
          expect(page).to have_css('.ingredients')
      end
      
    end

  end

end
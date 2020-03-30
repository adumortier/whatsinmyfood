# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients

require 'rails_helper'

RSpec.describe "As a user " , type: :feature do 

  describe "When I search an ingredient" do 

    scenario "I see a list of food with that ingredient and the nunber of search results" do 

      visit '/'
      fill_in :q, with: 'sweet potatoes'
      click_on 'Search'
      

    end

  end

end
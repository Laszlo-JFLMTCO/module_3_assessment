require 'rails_helper'

RSpec.describe 'User search stores' do
  scenario 'When enters zip code into search box' do
    VCR.use_cassette("search") do
      # As a user
      # When I visit "/"
      visit root_path
      
      # And I fill in a search box with "80202" and click "search"
      within('.navbar') do
        fill_in :searchbox, with: '80202'
        click_on 'search'
      end
      
      # Then my current path should be "/search" (ignoring params)
      expect(current_path).to eq(search_path)

      # And I should see stores within 25 miles of 80202
      # And I should see a message that says "16 Total Stores"
      # And I should see exactly 10 results
      # And I should see the long name, city, distance, phone number and store type for each of the 10 results
      expect(page).to have_content('16 Total Stores')
      expect(page).to have_css('tr', count: 11)
      expect(page).to have_content('Store name')
      expect(page).to have_content('City')
      expect(page).to have_content('Distance from 80202')
      expect(page).to have_content('Phone number')
      expect(page).to have_content('Store type')
    end
  end
end
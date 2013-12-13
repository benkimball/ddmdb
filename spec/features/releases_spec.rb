require 'spec_helper'

feature 'releases' do
  scenario 'managing releases' do
    Given 'I am on the homepage'
    When 'I navigate to the Releases page'
    And 'I create a new release'
    Then 'I should see that new release on the index page'
    And 'I can see the details of the new release'
  end

  def i_am_on_the_homepage
    visit root_path
  end

  def i_navigate_to_the_releases_page
    click_on 'Releases', match: :first
  end

  def i_create_a_new_release
    click_on 'New Release'
    fill_in 'Name', with: 'Harbinger'
    fill_in 'Abbreviation', with: 'Ha'
    fill_in 'Count', with: 80
    click_on 'Create Release'
  end

  def i_should_see_that_new_release_on_the_index_page
    expect(page).to have_content 'Harbinger'
  end

  def i_can_see_the_details_of_the_new_release
    click_on 'Harbinger'
    expect(page).to have_content 'Harbinger'
    expect(page).to have_content 'Ha'
    expect(page).to have_content '80'
  end
end


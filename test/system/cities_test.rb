require "application_system_test_case"

class CitiesTest < ApplicationSystemTestCase
  setup do
    @city = cities(:one)
  end

  test "visiting the index" do
    visit cities_url
    assert_selector "h1", text: "Cities"
  end

  test "creating a Citie" do
    visit cities_url
    click_on "New Citie"

    fill_in "Name", with: @city.name
    click_on "Create Citie"

    assert_text "Citie was successfully created"
    click_on "Back"
  end

  test "updating a Citie" do
    visit cities_url
    click_on "Edit", match: :first

    fill_in "Name", with: @city.name
    click_on "Update Citie"

    assert_text "Citie was successfully updated"
    click_on "Back"
  end

  test "destroying a Citie" do
    visit cities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Citie was successfully destroyed"
  end
end

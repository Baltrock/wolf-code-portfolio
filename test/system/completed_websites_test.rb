require "application_system_test_case"

class CompletedWebsitesTest < ApplicationSystemTestCase
  setup do
    @completed_website = completed_websites(:one)
  end

  test "visiting the index" do
    visit completed_websites_url
    assert_selector "h1", text: "Completed websites"
  end

  test "should create completed website" do
    visit completed_websites_url
    click_on "New completed website"

    fill_in "Admin", with: @completed_website.admin_id
    fill_in "Completion period", with: @completed_website.completion_period
    fill_in "Website description", with: @completed_website.website_description
    fill_in "Website name", with: @completed_website.website_name
    click_on "Create Completed website"

    assert_text "Completed website was successfully created"
    click_on "Back"
  end

  test "should update Completed website" do
    visit completed_website_url(@completed_website)
    click_on "Edit this completed website", match: :first

    fill_in "Admin", with: @completed_website.admin_id
    fill_in "Completion period", with: @completed_website.completion_period
    fill_in "Website description", with: @completed_website.website_description
    fill_in "Website name", with: @completed_website.website_name
    click_on "Update Completed website"

    assert_text "Completed website was successfully updated"
    click_on "Back"
  end

  test "should destroy Completed website" do
    visit completed_website_url(@completed_website)
    click_on "Destroy this completed website", match: :first

    assert_text "Completed website was successfully destroyed"
  end
end

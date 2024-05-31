require "application_system_test_case"

class SiteUpdatesTest < ApplicationSystemTestCase
  setup do
    @site_update = site_updates(:one)
  end

  test "visiting the index" do
    visit site_updates_url
    assert_selector "h1", text: "Site updates"
  end

  test "should create site update" do
    visit site_updates_url
    click_on "New site update"

    fill_in "Admin", with: @site_update.admin_id
    fill_in "Update description", with: @site_update.update_description
    fill_in "Update schedule", with: @site_update.update_schedule
    fill_in "Update title", with: @site_update.update_title
    click_on "Create Site update"

    assert_text "Site update was successfully created"
    click_on "Back"
  end

  test "should update Site update" do
    visit site_update_url(@site_update)
    click_on "Edit this site update", match: :first

    fill_in "Admin", with: @site_update.admin_id
    fill_in "Update description", with: @site_update.update_description
    fill_in "Update schedule", with: @site_update.update_schedule
    fill_in "Update title", with: @site_update.update_title
    click_on "Update Site update"

    assert_text "Site update was successfully updated"
    click_on "Back"
  end

  test "should destroy Site update" do
    visit site_update_url(@site_update)
    click_on "Destroy this site update", match: :first

    assert_text "Site update was successfully destroyed"
  end
end

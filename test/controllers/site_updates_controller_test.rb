require "test_helper"

class SiteUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site_update = site_updates(:one)
  end

  test "should get index" do
    get site_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_site_update_url
    assert_response :success
  end

  test "should create site_update" do
    assert_difference("SiteUpdate.count") do
      post site_updates_url, params: { site_update: { admin_id: @site_update.admin_id, update_description: @site_update.update_description, update_schedule: @site_update.update_schedule, update_title: @site_update.update_title } }
    end

    assert_redirected_to site_update_url(SiteUpdate.last)
  end

  test "should show site_update" do
    get site_update_url(@site_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_site_update_url(@site_update)
    assert_response :success
  end

  test "should update site_update" do
    patch site_update_url(@site_update), params: { site_update: { admin_id: @site_update.admin_id, update_description: @site_update.update_description, update_schedule: @site_update.update_schedule, update_title: @site_update.update_title } }
    assert_redirected_to site_update_url(@site_update)
  end

  test "should destroy site_update" do
    assert_difference("SiteUpdate.count", -1) do
      delete site_update_url(@site_update)
    end

    assert_redirected_to site_updates_url
  end
end

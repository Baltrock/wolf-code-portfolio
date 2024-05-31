require "test_helper"

class CompletedWebsitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @completed_website = completed_websites(:one)
  end

  test "should get index" do
    get completed_websites_url
    assert_response :success
  end

  test "should get new" do
    get new_completed_website_url
    assert_response :success
  end

  test "should create completed_website" do
    assert_difference("CompletedWebsite.count") do
      post completed_websites_url, params: { completed_website: { admin_id: @completed_website.admin_id, completion_period: @completed_website.completion_period, website_description: @completed_website.website_description, website_name: @completed_website.website_name } }
    end

    assert_redirected_to completed_website_url(CompletedWebsite.last)
  end

  test "should show completed_website" do
    get completed_website_url(@completed_website)
    assert_response :success
  end

  test "should get edit" do
    get edit_completed_website_url(@completed_website)
    assert_response :success
  end

  test "should update completed_website" do
    patch completed_website_url(@completed_website), params: { completed_website: { admin_id: @completed_website.admin_id, completion_period: @completed_website.completion_period, website_description: @completed_website.website_description, website_name: @completed_website.website_name } }
    assert_redirected_to completed_website_url(@completed_website)
  end

  test "should destroy completed_website" do
    assert_difference("CompletedWebsite.count", -1) do
      delete completed_website_url(@completed_website)
    end

    assert_redirected_to completed_websites_url
  end
end

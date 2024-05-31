require "application_system_test_case"

class WebsiteRequestsTest < ApplicationSystemTestCase
  setup do
    @website_request = website_requests(:one)
  end

  test "visiting the index" do
    visit website_requests_url
    assert_selector "h1", text: "Website requests"
  end

  test "should create website request" do
    visit website_requests_url
    click_on "New website request"

    fill_in "Deadline", with: @website_request.deadline
    fill_in "User", with: @website_request.user_id
    fill_in "Website description", with: @website_request.website_description
    fill_in "Website name", with: @website_request.website_name
    fill_in "Why website", with: @website_request.why_website
    click_on "Create Website request"

    assert_text "Website request was successfully created"
    click_on "Back"
  end

  test "should update Website request" do
    visit website_request_url(@website_request)
    click_on "Edit this website request", match: :first

    fill_in "Deadline", with: @website_request.deadline
    fill_in "User", with: @website_request.user_id
    fill_in "Website description", with: @website_request.website_description
    fill_in "Website name", with: @website_request.website_name
    fill_in "Why website", with: @website_request.why_website
    click_on "Update Website request"

    assert_text "Website request was successfully updated"
    click_on "Back"
  end

  test "should destroy Website request" do
    visit website_request_url(@website_request)
    click_on "Destroy this website request", match: :first

    assert_text "Website request was successfully destroyed"
  end
end

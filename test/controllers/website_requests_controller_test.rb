require "test_helper"

class WebsiteRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @website_request = website_requests(:one)
  end

  test "should get index" do
    get website_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_website_request_url
    assert_response :success
  end

  test "should create website_request" do
    assert_difference("WebsiteRequest.count") do
      post website_requests_url, params: { website_request: { deadline: @website_request.deadline, user_id: @website_request.user_id, website_description: @website_request.website_description, website_name: @website_request.website_name, why_website: @website_request.why_website } }
    end

    assert_redirected_to website_request_url(WebsiteRequest.last)
  end

  test "should show website_request" do
    get website_request_url(@website_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_website_request_url(@website_request)
    assert_response :success
  end

  test "should update website_request" do
    patch website_request_url(@website_request), params: { website_request: { deadline: @website_request.deadline, user_id: @website_request.user_id, website_description: @website_request.website_description, website_name: @website_request.website_name, why_website: @website_request.why_website } }
    assert_redirected_to website_request_url(@website_request)
  end

  test "should destroy website_request" do
    assert_difference("WebsiteRequest.count", -1) do
      delete website_request_url(@website_request)
    end

    assert_redirected_to website_requests_url
  end
end

require "test_helper"

class UserInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_information = user_informations(:one)
  end

  test "should get index" do
    get user_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_user_information_url
    assert_response :success
  end

  test "should create user_information" do
    assert_difference("UserInformation.count") do
      post user_informations_url, params: { user_information: { bio: @user_information.bio, email: @user_information.email, name: @user_information.name, user_id: @user_information.user_id } }
    end

    assert_redirected_to user_information_url(UserInformation.last)
  end

  test "should show user_information" do
    get user_information_url(@user_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_information_url(@user_information)
    assert_response :success
  end

  test "should update user_information" do
    patch user_information_url(@user_information), params: { user_information: { bio: @user_information.bio, email: @user_information.email, name: @user_information.name, user_id: @user_information.user_id } }
    assert_redirected_to user_information_url(@user_information)
  end

  test "should destroy user_information" do
    assert_difference("UserInformation.count", -1) do
      delete user_information_url(@user_information)
    end

    assert_redirected_to user_informations_url
  end
end

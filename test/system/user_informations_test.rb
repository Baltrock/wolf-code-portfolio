require "application_system_test_case"

class UserInformationsTest < ApplicationSystemTestCase
  setup do
    @user_information = user_informations(:one)
  end

  test "visiting the index" do
    visit user_informations_url
    assert_selector "h1", text: "User information"
  end

  test "should create user information" do
    visit user_informations_url
    click_on "New user information"

    fill_in "Bio", with: @user_information.bio
    fill_in "Email", with: @user_information.email
    fill_in "Name", with: @user_information.name
    fill_in "User", with: @user_information.user_id
    click_on "Create User information"

    assert_text "User information was successfully created"
    click_on "Back"
  end

  test "should update User information" do
    visit user_information_url(@user_information)
    click_on "Edit this user information", match: :first

    fill_in "Bio", with: @user_information.bio
    fill_in "Email", with: @user_information.email
    fill_in "Name", with: @user_information.name
    fill_in "User", with: @user_information.user_id
    click_on "Update User information"

    assert_text "User information was successfully updated"
    click_on "Back"
  end

  test "should destroy User information" do
    visit user_information_url(@user_information)
    click_on "Destroy this user information", match: :first

    assert_text "User information was successfully destroyed"
  end
end

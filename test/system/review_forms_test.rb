require "application_system_test_case"

class ReviewFormsTest < ApplicationSystemTestCase
  setup do
    @review_form = review_forms(:one)
  end

  test "visiting the index" do
    visit review_forms_url
    assert_selector "h1", text: "Review forms"
  end

  test "should create review form" do
    visit review_forms_url
    click_on "New review form"

    fill_in "Rating", with: @review_form.rating
    fill_in "Review", with: @review_form.review
    fill_in "Review title", with: @review_form.review_title
    fill_in "User", with: @review_form.user_id
    click_on "Create Review form"

    assert_text "Review form was successfully created"
    click_on "Back"
  end

  test "should update Review form" do
    visit review_form_url(@review_form)
    click_on "Edit this review form", match: :first

    fill_in "Rating", with: @review_form.rating
    fill_in "Review", with: @review_form.review
    fill_in "Review title", with: @review_form.review_title
    fill_in "User", with: @review_form.user_id
    click_on "Update Review form"

    assert_text "Review form was successfully updated"
    click_on "Back"
  end

  test "should destroy Review form" do
    visit review_form_url(@review_form)
    click_on "Destroy this review form", match: :first

    assert_text "Review form was successfully destroyed"
  end
end

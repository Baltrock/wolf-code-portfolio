require "application_system_test_case"

class ConfirmationFormsTest < ApplicationSystemTestCase
  setup do
    @confirmation_form = confirmation_forms(:one)
  end

  test "visiting the index" do
    visit confirmation_forms_url
    assert_selector "h1", text: "Confirmation forms"
  end

  test "should create confirmation form" do
    visit confirmation_forms_url
    click_on "New confirmation form"

    fill_in "Admin", with: @confirmation_form.admin_id
    fill_in "Deadline possibility", with: @confirmation_form.deadline_possibility
    fill_in "Overall comment", with: @confirmation_form.overall_comment
    fill_in "Price offer", with: @confirmation_form.price_offer
    fill_in "Website assessment", with: @confirmation_form.website_assessment
    click_on "Create Confirmation form"

    assert_text "Confirmation form was successfully created"
    click_on "Back"
  end

  test "should update Confirmation form" do
    visit confirmation_form_url(@confirmation_form)
    click_on "Edit this confirmation form", match: :first

    fill_in "Admin", with: @confirmation_form.admin_id
    fill_in "Deadline possibility", with: @confirmation_form.deadline_possibility
    fill_in "Overall comment", with: @confirmation_form.overall_comment
    fill_in "Price offer", with: @confirmation_form.price_offer
    fill_in "Website assessment", with: @confirmation_form.website_assessment
    click_on "Update Confirmation form"

    assert_text "Confirmation form was successfully updated"
    click_on "Back"
  end

  test "should destroy Confirmation form" do
    visit confirmation_form_url(@confirmation_form)
    click_on "Destroy this confirmation form", match: :first

    assert_text "Confirmation form was successfully destroyed"
  end
end

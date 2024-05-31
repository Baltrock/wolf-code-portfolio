require "application_system_test_case"

class CancellationFormsTest < ApplicationSystemTestCase
  setup do
    @cancellation_form = cancellation_forms(:one)
  end

  test "visiting the index" do
    visit cancellation_forms_url
    assert_selector "h1", text: "Cancellation forms"
  end

  test "should create cancellation form" do
    visit cancellation_forms_url
    click_on "New cancellation form"

    fill_in "Reason for cancellation", with: @cancellation_form.reason_for_cancellation
    fill_in "User", with: @cancellation_form.user_id
    click_on "Create Cancellation form"

    assert_text "Cancellation form was successfully created"
    click_on "Back"
  end

  test "should update Cancellation form" do
    visit cancellation_form_url(@cancellation_form)
    click_on "Edit this cancellation form", match: :first

    fill_in "Reason for cancellation", with: @cancellation_form.reason_for_cancellation
    fill_in "User", with: @cancellation_form.user_id
    click_on "Update Cancellation form"

    assert_text "Cancellation form was successfully updated"
    click_on "Back"
  end

  test "should destroy Cancellation form" do
    visit cancellation_form_url(@cancellation_form)
    click_on "Destroy this cancellation form", match: :first

    assert_text "Cancellation form was successfully destroyed"
  end
end

require "test_helper"

class ConfirmationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @confirmation_form = confirmation_forms(:one)
  end

  test "should get index" do
    get confirmation_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_confirmation_form_url
    assert_response :success
  end

  test "should create confirmation_form" do
    assert_difference("ConfirmationForm.count") do
      post confirmation_forms_url, params: { confirmation_form: { admin_id: @confirmation_form.admin_id, deadline_possibility: @confirmation_form.deadline_possibility, overall_comment: @confirmation_form.overall_comment, price_offer: @confirmation_form.price_offer, website_assessment: @confirmation_form.website_assessment, project_assignment: @confirmation_form.project_assignment } }
    end

    assert_redirected_to confirmation_form_url(ConfirmationForm.last)
  end

  test "should show confirmation_form" do
    get confirmation_form_url(@confirmation_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_confirmation_form_url(@confirmation_form)
    assert_response :success
  end

  test "should update confirmation_form" do
    patch confirmation_form_url(@confirmation_form), params: { confirmation_form: { admin_id: @confirmation_form.admin_id, deadline_possibility: @confirmation_form.deadline_possibility, overall_comment: @confirmation_form.overall_comment, price_offer: @confirmation_form.price_offer, website_assessment: @confirmation_form.website_assessment } }
    assert_redirected_to confirmation_form_url(@confirmation_form)
  end

  test "should destroy confirmation_form" do
    assert_difference("ConfirmationForm.count", -1) do
      delete confirmation_form_url(@confirmation_form)
    end

    assert_redirected_to confirmation_forms_url
  end
end

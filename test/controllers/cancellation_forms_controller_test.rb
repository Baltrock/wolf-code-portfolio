require "test_helper"

class CancellationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cancellation_form = cancellation_forms(:one)
  end

  test "should get index" do
    get cancellation_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_cancellation_form_url
    assert_response :success
  end

  test "should create cancellation_form" do
    assert_difference("CancellationForm.count") do
      post cancellation_forms_url, params: { cancellation_form: { reason_for_cancellation: @cancellation_form.reason_for_cancellation, user_id: @cancellation_form.user_id } }
    end

    assert_redirected_to cancellation_form_url(CancellationForm.last)
  end

  test "should show cancellation_form" do
    get cancellation_form_url(@cancellation_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_cancellation_form_url(@cancellation_form)
    assert_response :success
  end

  test "should update cancellation_form" do
    patch cancellation_form_url(@cancellation_form), params: { cancellation_form: { reason_for_cancellation: @cancellation_form.reason_for_cancellation, user_id: @cancellation_form.user_id } }
    assert_redirected_to cancellation_form_url(@cancellation_form)
  end

  test "should destroy cancellation_form" do
    assert_difference("CancellationForm.count", -1) do
      delete cancellation_form_url(@cancellation_form)
    end

    assert_redirected_to cancellation_forms_url
  end
end

require "test_helper"

class SkillListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill_list = skill_lists(:one)
  end

  test "should get index" do
    get skill_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_list_url
    assert_response :success
  end

  test "should create skill_list" do
    assert_difference("SkillList.count") do
      post skill_lists_url, params: { skill_list: { admin_id: @skill_list.admin_id, skill: @skill_list.skill } }
    end

    assert_redirected_to skill_list_url(SkillList.last)
  end

  test "should show skill_list" do
    get skill_list_url(@skill_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_list_url(@skill_list)
    assert_response :success
  end

  test "should update skill_list" do
    patch skill_list_url(@skill_list), params: { skill_list: { admin_id: @skill_list.admin_id, skill: @skill_list.skill } }
    assert_redirected_to skill_list_url(@skill_list)
  end

  test "should destroy skill_list" do
    assert_difference("SkillList.count", -1) do
      delete skill_list_url(@skill_list)
    end

    assert_redirected_to skill_lists_url
  end
end

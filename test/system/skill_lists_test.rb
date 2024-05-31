require "application_system_test_case"

class SkillListsTest < ApplicationSystemTestCase
  setup do
    @skill_list = skill_lists(:one)
  end

  test "visiting the index" do
    visit skill_lists_url
    assert_selector "h1", text: "Skill lists"
  end

  test "should create skill list" do
    visit skill_lists_url
    click_on "New skill list"

    fill_in "Admin", with: @skill_list.admin_id
    fill_in "Skill", with: @skill_list.skill
    click_on "Create Skill list"

    assert_text "Skill list was successfully created"
    click_on "Back"
  end

  test "should update Skill list" do
    visit skill_list_url(@skill_list)
    click_on "Edit this skill list", match: :first

    fill_in "Admin", with: @skill_list.admin_id
    fill_in "Skill", with: @skill_list.skill
    click_on "Update Skill list"

    assert_text "Skill list was successfully updated"
    click_on "Back"
  end

  test "should destroy Skill list" do
    visit skill_list_url(@skill_list)
    click_on "Destroy this skill list", match: :first

    assert_text "Skill list was successfully destroyed"
  end
end

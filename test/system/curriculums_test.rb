require "application_system_test_case"

class CurriculumsTest < ApplicationSystemTestCase
  # setup do
  #   @user = users(:user_one)
  #   sign_in @user
  #   @team = teams(:team_one)
  #   @curriculum = curriculums(:curriculum_one)
  # end

  # test "visiting the index" do
  #   visit team_curriculums_url(@team)
  #   assert_selector "h1", text: "Curriculums"
  # end

  # test "should create curriculum" do
  #   visit team_curriculums_url(@team)
  #   click_on "New"

  #   fill_in "Description", with: @curriculum.description
  #   fill_in "Name", with: @curriculum.name
  #   fill_in "Short name", with: @curriculum.short_name
  #   fill_in "Team", with: @curriculum.team_id
  #   click_on "Create Curriculum"

  #   assert_text "Curriculum was successfully created"
  #   click_on "Back"
  # end

  # test "should update Curriculum" do
  #   visit team_curriculum_url(@team, @curriculum)
  #   click_on "Edit", match: :first

  #   fill_in "Description", with: @curriculum.description
  #   fill_in "Name", with: @curriculum.name
  #   fill_in "Short name", with: @curriculum.short_name
  #   fill_in "Team", with: @curriculum.team_id
  #   click_on "Update Curriculum"

  #   assert_text "Curriculum was successfully updated"
  #   click_on "Back"
  # end

  # test "should destroy Curriculum" do
  #   visit curriculum_url(@curriculum)
  #   click_on "Delete", match: :first

  #   assert_text "Curriculum was successfully destroyed"
  # end
end

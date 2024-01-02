require "test_helper"

class CurriculumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:user_one)
    sign_in @user
    @team = teams(:team_one)
    @curriculum = curriculums(:curriculum_one)
  end

  test "should get index" do
    get team_curriculums_url(@team)
    assert_response :success
  end

  test "should get new" do
    get new_team_curriculum_url(@team)
    assert_response :success
  end

  test "should create curriculum" do
    assert_difference("Curriculum.count") do
      post team_curriculums_url(@team),
           params: {
             curriculum: {
               description: @curriculum.description,
               name: @curriculum.name,
               short_name: @curriculum.short_name,
               team_id: @curriculum.team_id,
             },
           }
    end

    assert_redirected_to team_curriculum_url(@team, Curriculum.last)
  end

  test "should show curriculum" do
    get team_curriculum_url(@team, @curriculum)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_curriculum_url(@team, @curriculum)
    assert_response :success
  end

  test "should update curriculum" do
    patch team_curriculum_url(@team, @curriculum),
          params: {
            curriculum: {
              description: @curriculum.description,
              name: @curriculum.name,
              short_name: @curriculum.short_name,
              team_id: @curriculum.team_id,
            },
          }
    assert_redirected_to team_curriculum_url(@team, @curriculum)
  end

  test "should destroy curriculum" do
    assert_difference("Curriculum.count", -1) do
      delete team_curriculum_url(@team, @curriculum)
    end

    assert_redirected_to team_curriculums_url(@team)
  end
end

require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:user_one)
    sign_in @user
    @team = teams(:team_one)
    @student = students(:student_one)
  end

  test "should get index" do
    get team_students_url(@team)
    assert_response :success
  end

  test "should get new" do
    get new_team_student_url(@team)
    assert_response :success
  end

  test "should create student" do
    assert_difference("Student.count") do
      post team_students_url(@team),
           params: {
             student: {
               address: @student.address,
               chronic_conditions: @student.chronic_conditions,
               current_school: @student.current_school,
               date_of_birth: @student.date_of_birth,
               email: @student.email,
               emergency_contact_name: @student.emergency_contact_name,
               emergency_contact_number: @student.emergency_contact_number,
               emergency_contact_relationship:
                 @student.emergency_contact_relationship,
               name: @student.name,
               gender: @student.gender,
               medication_allergies: @student.medication_allergies,
               nickname: @student.nickname,
               nickname_en: @student.nickname_en,
               notes: @student.notes,
               parent_contact: @student.parent_contact,
               parent_name: @student.parent_name,
               phone_number: @student.phone_number,
               team_id: @student.team_id,
             },
           }
    end

    assert_redirected_to team_student_url(@team, Student.last)
  end

  test "should show student" do
    get team_student_url(@team, @student)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_student_url(@team, @student)
    assert_response :success
  end

  test "should update student" do
    patch team_student_url(@team, @student),
          params: {
            student: {
              address: @student.address,
              chronic_conditions: @student.chronic_conditions,
              current_school: @student.current_school,
              date_of_birth: @student.date_of_birth,
              email: @student.email,
              emergency_contact_name: @student.emergency_contact_name,
              emergency_contact_number: @student.emergency_contact_number,
              emergency_contact_relationship:
                @student.emergency_contact_relationship,
              name: @student.name,
              gender: @student.gender,
              medication_allergies: @student.medication_allergies,
              nickname: @student.nickname,
              nickname_en: @student.nickname_en,
              notes: @student.notes,
              parent_contact: @student.parent_contact,
              parent_name: @student.parent_name,
              phone_number: @student.phone_number,
              team_id: @student.team_id,
            },
          }
    assert_redirected_to team_student_url(@team, @student)
  end

  test "should destroy student" do
    assert_difference("Student.count", -1) do
      delete team_student_url(@team, @student)
    end

    assert_redirected_to team_students_url(@team)
  end
end

require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference("Student.count") do
      post students_url, params: { student: { address: @student.address, chronic_conditions: @student.chronic_conditions, current_school: @student.current_school, date_of_birth: @student.date_of_birth, email: @student.email, emergency_contact_name: @student.emergency_contact_name, emergency_contact_number: @student.emergency_contact_number, emergency_contact_relationship: @student.emergency_contact_relationship, first_name: @student.first_name, gender: @student.gender, last_name: @student.last_name, medication_allergies: @student.medication_allergies, nickname: @student.nickname, nickname_en: @student.nickname_en, notes: @student.notes, parent_contact: @student.parent_contact, parent_name: @student.parent_name, phone_number: @student.phone_number, team_id: @student.team_id, title_name: @student.title_name } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { address: @student.address, chronic_conditions: @student.chronic_conditions, current_school: @student.current_school, date_of_birth: @student.date_of_birth, email: @student.email, emergency_contact_name: @student.emergency_contact_name, emergency_contact_number: @student.emergency_contact_number, emergency_contact_relationship: @student.emergency_contact_relationship, first_name: @student.first_name, gender: @student.gender, last_name: @student.last_name, medication_allergies: @student.medication_allergies, nickname: @student.nickname, nickname_en: @student.nickname_en, notes: @student.notes, parent_contact: @student.parent_contact, parent_name: @student.parent_name, phone_number: @student.phone_number, team_id: @student.team_id, title_name: @student.title_name } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference("Student.count", -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end

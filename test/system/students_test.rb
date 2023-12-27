require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    fill_in "Address", with: @student.address
    fill_in "Chronic conditions", with: @student.chronic_conditions
    fill_in "Current school", with: @student.current_school
    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Email", with: @student.email
    fill_in "Emergency contact name", with: @student.emergency_contact_name
    fill_in "Emergency contact number", with: @student.emergency_contact_number
    fill_in "Emergency contact relationship", with: @student.emergency_contact_relationship
    fill_in "First name", with: @student.first_name
    fill_in "Gender", with: @student.gender
    fill_in "Last name", with: @student.last_name
    fill_in "Medication allergies", with: @student.medication_allergies
    fill_in "Nickname", with: @student.nickname
    fill_in "Nickname en", with: @student.nickname_en
    fill_in "Notes", with: @student.notes
    fill_in "Parent contact", with: @student.parent_contact
    fill_in "Parent name", with: @student.parent_name
    fill_in "Phone number", with: @student.phone_number
    fill_in "Team", with: @student.team_id
    fill_in "Title name", with: @student.title_name
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    fill_in "Address", with: @student.address
    fill_in "Chronic conditions", with: @student.chronic_conditions
    fill_in "Current school", with: @student.current_school
    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Email", with: @student.email
    fill_in "Emergency contact name", with: @student.emergency_contact_name
    fill_in "Emergency contact number", with: @student.emergency_contact_number
    fill_in "Emergency contact relationship", with: @student.emergency_contact_relationship
    fill_in "First name", with: @student.first_name
    fill_in "Gender", with: @student.gender
    fill_in "Last name", with: @student.last_name
    fill_in "Medication allergies", with: @student.medication_allergies
    fill_in "Nickname", with: @student.nickname
    fill_in "Nickname en", with: @student.nickname_en
    fill_in "Notes", with: @student.notes
    fill_in "Parent contact", with: @student.parent_contact
    fill_in "Parent name", with: @student.parent_name
    fill_in "Phone number", with: @student.phone_number
    fill_in "Team", with: @student.team_id
    fill_in "Title name", with: @student.title_name
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end

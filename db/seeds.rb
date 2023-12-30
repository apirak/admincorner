# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

team1 = Team.create(name: "EC BBT", domain: "team1.com", subdomain: "team1")
team2 = Team.create(name: "EC BBT2", domain: "team2.com", subdomain: "team2")
team3 = Team.create(name: "EC MT", domain: "team3.com", subdomain: "team3")
team4 = Team.create(name: "EC Korad", domain: "team4.com", subdomain: "team4")

user1 =
  User.create(
    email: "user1@gmail.com",
    password: "valid1",
    password_confirmation: "valid1",
  )

user2 =
  User.create(
    email: "user2@gmail.com",
    password: "valid1",
    password_confirmation: "valid1",
  )

team1.members.create(user: user1, roles: { admin: true })
team2.members.create(user: user1, roles: { admin: true })
team3.members.create(user: user2, roles: { admin: true })
team4.members.create(user: user2, roles: { admin: true })

curriculum1 =
  team1.curriculums.create(
    name: "English",
    short_name: "Eng 1",
    description: "English language for beginners",
  )

curriculum2 =
  team2.curriculums.create(
    name: "English",
    short_name: "Eng 2",
    description: "English language for another beginners",
  )

student1 =
  team1.students.create(
    name: "สุรกิจ สมบูรณ์",
    nickname: "เบิร์ด",
    nickname_en: "Bird",
    date_of_birth: Date.new(2000, 1, 1),
    gender: "Male",
    current_school: "School 1",
    address: "Address 1",
    phone_number: "1234567890",
    email: "student1@gmail.com",
    medication_allergies: "",
    chronic_conditions: "",
    emergency_contact_name: "คุณแม่ พรพัทร์",
    emergency_contact_number: "1234567890",
    parent_name: "พรพัทร์ สุจิตรา",
    parent_contact: "1234567890",
    notes: "น้องไม่ชอบกินนม ให้ดื่มน้ำบ่อยๆ",
  )

student2 =
  team1.students.create(
    name: "ปริญญา จันทร์เพ็ญ",
    nickname: "เจมส์",
    nickname_en: "James",
    date_of_birth: Date.new(2001, 5, 15),
    gender: "Male",
    current_school: "School 2",
    address: "Address 2",
    phone_number: "0987654321",
    email: "student2@gmail.com",
    medication_allergies: "Penicillin",
    chronic_conditions: "Asthma",
    emergency_contact_name: "คุณพ่อ สมชาย",
    emergency_contact_number: "0987654321",
    parent_name: "สมชาย จันทร์เพ็ญ",
    parent_contact: "0987654321",
    notes: "น้องมีอาการแพ้ยาเพนนิซิลิน",
  )

student3 =
  team2.students.create(
    name: "สุธาสินี เกตุแก้ว",
    nickname: "น้ำตาล",
    nickname_en: "Sugar",
    date_of_birth: Date.new(2002, 2, 20),
    gender: "Female",
    current_school: "School 3",
    address: "Address 3",
    phone_number: "0123456789",
    email: "student3@gmail.com",
    medication_allergies: "Nuts, Bee Stings",
    chronic_conditions: "Diabetes",
    emergency_contact_name: "คุณแม่ จันทรา",
    emergency_contact_number: "0123456789",
    parent_name: "จันทรา เกตุแก้ว",
    parent_contact: "0123456789",
    notes: "น้องต้องควบคุมน้ำตาลอย่างเข้มงวด",
  )

student4 =
  team2.students.create(
    name: "วิชญาณี ประสิทธิ์",
    nickname: "เฟิร์น",
    nickname_en: "Fern",
    date_of_birth: Date.new(2003, 3, 30),
    gender: "Female",
    current_school: "School 4",
    address: "Address 4",
    phone_number: "9876543210",
    email: "student4@gmail.com",
    medication_allergies: "Latex",
    chronic_conditions: "Epilepsy",
    emergency_contact_name: "คุณพ่อ สมชาย",
    emergency_contact_number: "9876543210",
    parent_name: "สมชาย ประสิทธิ์",
    parent_contact: "9876543210",
    notes: "น้องต้องหลีกเลี่ยงสารลาเท็กซ์ในวัสดุต่างๆ",
  )

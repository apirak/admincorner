# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

team1 = Team.create(name: "Team1", domain: "team1.com", subdomain: "team1")
team2 = Team.create(name: "Team2", domain: "team2.com", subdomain: "team2")
team3 = Team.create(name: "Team3", domain: "team3.com", subdomain: "team3")
team4 = Team.create(name: "Team4", domain: "team4.com", subdomain: "team4")

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

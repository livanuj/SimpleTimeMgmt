# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
	admin: "true",
	role: 1,
	email: "admin@gmail.com",
	firstname: "Administrator",
	lastname: "",
	password: "admin123",
	password_confirmation: "admin123")

User.create!(
	admin: "false",
	role: 1,
	email: "manager@gmail.com",
	firstname: "Anuj",
	lastname: "Shrestha",
	password: "manager",
	password_confirmation: "manager")